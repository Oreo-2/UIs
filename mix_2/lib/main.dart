import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'mix 2',
      home: MyHomePage(title: 'mix_2'),
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
      appBar: AppBar(
        title: Title(
            color: Colors.white,
            child: const SizedBox(
              height: 100,
            )),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 95,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Icon(Icons.car_rental), Text('Motor')],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 95,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.health_and_safety_outlined),
                              Text('Health')
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 95,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Icon(Icons.umbrella_sharp), Text('Life')],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 95,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.airplane_ticket_outlined,
                                textDirection: TextDirection.ltr,
                              ),
                              Text('Travel')
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text('Issued(0)'),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Quotes History(125)'),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Proposal Pending')
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 50, bottom: 0, left: 0, right: 0),
              child: const SearchBar(
                hintText: 'Search by name,mobile,reg number',
                leading: Icon(Icons.search),
                trailing: [Icon(Icons.cabin)],
                shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
