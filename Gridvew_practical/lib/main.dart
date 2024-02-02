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
    List<String> textu = ['sdf','ffhg','fgfg','dfdf'];
    List<Icon> icobf = [Icon(Icons.calendar_month),Icon(Icons.calendar_today),Icon(Icons.drafts_outlined),Icon(Icons.javascript)];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit',
        ),
        titleTextStyle: const TextStyle(color: Colors.white),
        leadingWidth: 50,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const SearchBar(
              hintText: 'Search',
            ),
          ),
          GridView.builder(itemCount: 4,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,mainAxisSpacing:1,crossAxisSpacing: 1 ,childAspectRatio: 4/3),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(width: 50,height: 5,color: Colors.black12,
                    child: Row(
                      children: [
                        (icobf[index]),
                        Text(textu[index]),

                      ],
                    ),
                  )
                );
              }),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(child: Text('My Lists',textAlign: TextAlign.left,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),height: 25,),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridTileBar(backgroundColor: Colors.black12,
            leading: Icon(Icons.format_list_bulleted_rounded),
            title: Text('Reminders'),
            trailing: Text('1'),),
          ),
        ]),
      ),
    );
  }
}
