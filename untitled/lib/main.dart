import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Demo Page',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: const Column(
        children: [
          Image(image: AssetImage('assets/ss.png')),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 35,),
              Text(
                'Business Model Canvas For Startups',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w500
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
          SizedBox(height: 25,),
          Row(
            children: [SizedBox(width: 35,),
              Icon(
                Icons.calendar_month,
              ),
              Text(
                'Wednesday, November 30,2022',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [SizedBox(width: 60,),
              Text(
                '3:00 PM - 5:00 PM IST',
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [SizedBox(width: 60,),
              Text('Dr Aparajita Prasad ',
                style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [SizedBox(width: 20,),
              Text(
                'About',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'The business model is key factor that leads to success in startups.'
              'It provides the starting point that allows a business to maximise'
             ' its profits. A viable business model is a key determinant( along with product development )'
              ' in obtaining funding.',
              textAlign: TextAlign.start,
            ),

          ),
          Row(
            children: [SizedBox(width: 22,),
              Text(
                'Amity Innovation Incubator in partnership with.....',


              ),
            ],
          )
        ],
      ),
    );
  }
}
