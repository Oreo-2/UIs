import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int currentButton = 0;
  List<String> button1 = [
    "https://upload.wikimedia.org/wikipedia/commons/4/49/Fann_Mountains_vertical_2013.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/4/49/Fann_Mountains_vertical_2013.jpg"
  ];
  List<String> button2 = [
    "https://unsplash.com/s/photos/valley",
    "https://unsplash.com/s/photos/valley",
  ];
  List<String> button3 = [
    "https://www.britannica.com/science/forest",
    "https://www.britannica.com/science/forest"
  ];
  List<String> mainlist = [];

  @override
  void initState() {
    mainlist = button1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              color: Color(0xff0F2940),
            ),
          ],
        ),
        Column(
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      "Explore\nthe world",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: mainlist.length + 1,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return RotatedBox(
                        quarterTurns: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 30, bottom: 40, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentButton = 2;
                                    mainlist = button3;
                                  });
                                },
                                child: Text(
                                  "Packages",
                                  style: TextStyle(
                                      color: currentButton == 2
                                          ? Colors.amber
                                          : Colors.black,
                                      fontSize: 30),
                                ),
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentButton = 1;
                                    mainlist = button1;
                                  });
                                },
                                child: Text(
                                  "Flights",
                                  style: TextStyle(
                                      color: currentButton == 1
                                          ? Colors.amber
                                          : Colors.black,
                                      fontSize: 30),
                                ),
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentButton = 0;
                                    mainlist = button2;
                                  });
                                },
                                child: Text(
                                  "Hotels",
                                  style: TextStyle(
                                      color: currentButton == 2
                                          ? Colors.amber
                                          : Colors.white,
                                      fontSize: 30),
                                ),
                              ),
                              SizedBox(
                                width: 60,
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(20),
                              width: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.black),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  mainlist[index-1],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Text(
                              'Mountain',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 22.0, bottom: 26),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.amber,
                                ),
                                Text(
                                  "India",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black38),
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    }
                  }),
            )
          ],
        )
      ],
    ));
  }
}
