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
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Title(color: Colors.white, child: const SizedBox(height: 50)),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: Row(
                children: [
                  Container(
                    child: const Icon(Icons.account_circle_outlined),
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    height: 100,
                    width: 300,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Abhi',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('8076146524'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('abhishekak048@gmail.com'),
                            Icon(Icons.arrow_circle_right_outlined),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(10)),
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.circle),
                            Text('my services'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.circle_notifications_sharp),
                            Text('notifications'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.settings_applications_sharp),
                            Text('settings'),
                          ],
                        )
                      ],
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   children: [
                    //     Text('my services'),
                    //     Text('notifications'),
                    //     Text('settings')
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: ListView(
                  shrinkWrap: true,
                  children: const [
                    ListTile(
                      leading: Icon(Icons.label_important),
                      title: Text('coupons'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.card_giftcard),
                      title: Text('thanks benefits'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.account_circle_rounded),
                      title: Text('refer a friend & get 300/-'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text('find a store'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.connecting_airports_sharp),
                      title: Text('transaction'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.calendar_today),
                      title: Text('track request'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.card_giftcard),
                      title: Text('orders'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
