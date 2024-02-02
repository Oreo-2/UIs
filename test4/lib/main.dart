import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Currency Converter',
      home: CurrencyConverter(title: 'Currency Converter '),);
  }
}

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key, required this.title});

  final String title;

  @override
  State<CurrencyConverter> createState() => _CurrencyConverter();
}


class _CurrencyConverter extends State<CurrencyConverter> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) * 83.15;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    final border=OutlineInputBorder
      (borderSide: const BorderSide(
      color: Colors.black,
      width:1.0,
      style:   BorderStyle.solid ,
      strokeAlign: BorderSide.strokeAlignInside,),
      borderRadius:  BorderRadius.circular(30),);

    const MaterialApp(debugShowCheckedModeBanner: false);
    return Scaffold(
      backgroundColor: Colors.blueGrey,

           appBar:AppBar(
             backgroundColor: Colors.black,
             elevation: 10,
             title:const Text('Currency Converter')
           ),
           body: Center(child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text
                     ('INR ${result != 0 ? result.toStringAsFixed(2):result.toStringAsFixed(0) }',
                      style: const TextStyle(
                      color: Colors.white, fontSize: 50,
              ),              ),

                TextField(
                   controller: textEditingController,
                   style:const  TextStyle(color: Colors.pink ,fontSize: 30,) ,
                   decoration: InputDecoration(
                   hintText: 'Amount In USD',hintStyle: const TextStyle(
                   color:Colors.black
                         ),
                  prefixIcon: const Icon(Icons.attach_money_outlined),prefixIconColor: Colors.black87,
                   filled:true,
                   fillColor: Colors.white70,
                   focusedBorder: border,
                   enabledBorder: border,
                             ) ,
                   keyboardType:const TextInputType.numberWithOptions(decimal: true),

                ),

               const SizedBox(height: 10), ElevatedButton(onPressed: convert,
                  style:TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                                   ),
                  ),
                 child: const Text('convert'),
                ),

               ],
              ),
            ),
        ),
    );
    }
}

