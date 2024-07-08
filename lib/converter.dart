import 'package:flutter/material.dart';

class ConverterScreen extends StatefulWidget {
  const ConverterScreen({super.key});

  @override
  State<ConverterScreen> createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  
  double result = 0; //1

  final TextEditingController textEditingController = TextEditingController(); //2

  void convert() //3
  {
    setState(() {
      result = double.parse(textEditingController.text) * 117;
    });
  }

  @override
  void dispose() //4
  {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          title: const Text(
            'Currency Converter',
            style: TextStyle(
              letterSpacing: 1.5,
              fontSize: 18,
              color: Colors.white),
          ),
          centerTitle: true,
        ),
        
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  result.toString(),
                   style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                 ),
                const SizedBox(
                  width: 6,
                ),
                const Text(
                  '৳',
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: textEditingController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Please Enter the Amount in USD [1 USD = 117 TAKA]",
                    hintStyle:TextStyle(
                      fontSize: 11,
                      color: Colors.black),
                    helperStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.monetization_on),
                    prefixIconColor: Colors.black),
              ),
            ),
            const SizedBox(height: 10,),
           
            TextButton(
                onPressed: () {
                  convert();
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    fixedSize: MaterialStatePropertyAll(Size(300, 40)),
                     ),
                child: const Text('Convert',
                  style:TextStyle(
                    fontSize: 14,
                    letterSpacing:2,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  ) ,),
                )
          ],
        )
        );
  }
}