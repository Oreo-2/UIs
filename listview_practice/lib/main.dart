import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Listview Demo',
      home:  MyHomePage(title: 'Listview Home Page')
      ,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}(())

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

 var array = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
   return Scaffold(
     
     appBar:
       AppBar(
        title: const Text('Alphabets',style: TextStyle(fontSize:20,fontWeight: FontWeight.w700 ),),),

        body: ListView.builder(itemBuilder: (context,index){
          return Text(array[index],style: const TextStyle(fontSize: 50,fontWeight: FontWeight.w500),);
    },
         itemCount: array.length,
         itemExtent: 100,
       )
    );
  }
}


