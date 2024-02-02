import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var height, width;
  List image = ["assets/images/mcq.png",
    "assets/images/quiz.png",
    "assets/images/pyq.jpeg",
    "assets/images/pdf.png",
    "assets/images/job.png",
    "assets/images/about.png"];

  List name = ["MCQ","QUIZ","PYQ","PDF","JOB","ABOUT"
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery
        .of(context)
        .size
        .height;
    width = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blueAccent,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(),
                height: height * 0.25,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 35, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.menu, size: 40,),
                          ClipRRect(
                            child: Image.asset(
                              'assets/images/bot.png',
                              height: 40,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Text(
                        "DashBoard",
                        style:
                        TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(scrollDirection: Axis.vertical,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  //height: height * 0.75,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                           ),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: image.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: Container(margin: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [BoxShadow(color: Colors.black,
                                      blurRadius: 10,
                                      spreadRadius: 6,
                                      blurStyle: BlurStyle.outer)
                                  ])
                              ,
                              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(image[index],width: 100,),
                                  Text(name[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          );
                        }
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
