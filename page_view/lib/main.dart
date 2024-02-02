import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    ));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context)

  //(PAGE FORMATION)
  {
    return Scaffold(
      body: AnimatedContainer(duration: const Duration(seconds: 50),curve: Curves.linear,color: Colors.red,
        child: PageView(
          children: [
            makePage(
                image: 'assets/images/one.jpg',
                title: 'Forest',
                description:
                    'A forest is an area of land dominated by trees.Hundreds of definitions of forest are used throughout the world, incorporating factors such as tree density, tree height, land use, legal standing, and ecological function.',
            page: 1),


            makePage(image: 'assets/images/2.jpg', title: 'Sunset',
            description: 'Sunset (or sundown) is the disappearance of the Sun below the horizon of the Earth (or any other astronomical object in the Solar System) due to its rotation.',
            page: 2),
            makePage(image: 'assets/images/3.jpg', title: 'Highway',
            description: 'A highway is a busy road with many lanes. Highways are usually the quickest route for driving between one city and another.',
            page: 3),
          ],
        ),
      ),
    );
  }

//(BACKGROUND IMAGE CUSTOMISATION)

  Widget makePage({image, title, description,page,totalpage=3}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight,
                stops: const [0.3, 0.9], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2),
        ])),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
//(PAGE COUNT)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    page.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/'+ totalpage.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
//(BOTTOM PART)
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
 //(STAR RATING)

                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20,
                            )),
                        Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20,
                            )),
                        Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20,
                            )),
                        Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 20,
                            )),
                        Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 20,
                            )),
                        const Text(
                          '3.0',
                          style: TextStyle(color: Colors.white70, fontSize: 20),
                        ),
                        const Text(
                          '(2300)',
                          style: TextStyle(color: Colors.white70, fontSize: 15),
                        )
                      ],
                    ),
                    const SizedBox(height: 20,),

//(DESCRIPTION)
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text(description,style: TextStyle(color: Colors.white.withOpacity(.7),height: 2,fontSize: 16),),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
