import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'gridview Demo',
      home: MyHomePage(title: 'Gridview Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              Container(
                height: 110,
                width: 500,
                decoration: const BoxDecoration(
                    color: Colors.purple,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child:  Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Kausani',
                            style:
                                TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          Text(
                            '3`',
                            style:
                                TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                          )
                        ],
                      ),
                      Text(
                        '12:26AM',
                        style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                      ),

                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Text('Mostly Clear'),
                          SizedBox(
                            width: 150,
                          ),
                          Text('H:14` L:1`')
                        ],
                      )
                    ],
                  ),

              ),

              ),
            ],
          ),
        ),
        );
  }
}
