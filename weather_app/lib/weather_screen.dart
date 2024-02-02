import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('Weather App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          ),
        centerTitle: true,
         actions:[
           IconButton(onPressed: () {},
            icon: const Icon(Icons.refresh_sharp),
           ),
        ],
      ),
      body:  Column(
        children: [
          //main card
          Card(
            child: Column()
          ),
          const Placeholder(
            fallbackHeight: 250,
          ),
          const SizedBox(height: 10,),
          //weather forecast cards
          const Placeholder(
            fallbackHeight: 150,
          ),
          const SizedBox(height: 10,),
          //additional information
          const Placeholder(
            fallbackHeight: 100,
          ),
        ],
      ),
    );
  }
}
