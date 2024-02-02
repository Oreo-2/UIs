import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          size: 30,
                        )),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 300,
                    color: Colors.white,
                        child: Center(
                          child: RotatedBox(quarterTurns: 3,
                            child: Text("Natural\nIngredients",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),
                            ),
                          ),
                        ),
                  )),
                  Expanded(
                      flex: 2,
                      child: Container(
                        height: 300,
                        color: Colors.red,
                        child: Image.network(
                            "data:image/jpeg;base64,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"
                        ,fit:BoxFit.fill ,),
                      )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                        height: 300,
                        color: Colors.black,
                        child: Center(
                          child: RotatedBox(quarterTurns: 3,
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [Container(margin: EdgeInsets.only(right: 10),height: 1,width: 50,color: Colors.white,),
                                Text("02",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: Container(padding: EdgeInsets.all(50),
                        height: 300,
                        color: Colors.white,
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                              child: Text('Info',style: TextStyle(color: Colors.grey,fontSize: 20),),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                              child: Text("More and more people are opting to the herbal life.",style: TextStyle(fontSize: 15),),
                            )
                          ],
                        )
                      )),
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
