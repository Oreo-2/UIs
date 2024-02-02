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
      home: MyHomePage(title: 'Listview Home Page'),
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
    var arrname = [
      'Abhishek kumar',
      'Rajesh kumar',
      'abhishek kumar',
      'Abhishek kumar',
      'Abhishek kumar',

    ];
    var arrmail = [
      'abhishekak048@gmail.com',
      'rajesh.rk291@gmail.com',
      'abhishekak048.drive@gmail.com',
      'abhishekak048.drive2@gmail.com',
      'abhishekak048.drive3@gmail.com'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose an account',
        ),toolbarTextStyle: TextStyle(color: Colors.black),
        toolbarHeight: 150,
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text(arrname[index]),
            subtitle: Text(arrmail[index]),

          );
        },
        itemCount: arrname.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 15,
            thickness: 2,
          );
        },
      ),
    );
  }
}
