import 'package:flutter/material.dart';

class Emni extends StatefulWidget {
  const Emni({super.key});

  @override
  State<Emni> createState() => _EmniState();
}

class _EmniState extends State<Emni> {
  double result = 0;

  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 117;
    });
  }

  @override
  void dispose() {
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
            style: TextStyle(fontSize: 18, color: Colors.white),
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
                    hintText: 'Please enter the amount in USD',
                    helperStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.white,
                    filled: true,
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
                    fixedSize: MaterialStatePropertyAll(Size(300, 40)) ),
                child: const Text('Convert'))
          ],
        ));
  }
}