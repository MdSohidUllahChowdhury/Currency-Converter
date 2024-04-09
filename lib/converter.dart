import 'package:flutter/material.dart';

class Emni extends StatefulWidget {
  const Emni({super.key});

  @override
  State<Emni> createState() => _EmniState();
}

class _EmniState extends State<Emni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Currency Converter',
        style: TextStyle(fontSize: 18,color: Colors.white),),
        centerTitle: true,
        elevation: 0,),
      body:
       Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Please enter the amount in USD',
                helperStyle: TextStyle(color: Colors.black),
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.monetization_on),
                prefixIconColor: Colors.black
              ),
              
            ),
          ),
          
          
             SizedBox(height: 10,),

            TextButton(onPressed: null,
            style:ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.black),
              foregroundColor: MaterialStatePropertyAll(Colors.white),
              minimumSize: MaterialStatePropertyAll(Size(300,50))
            ) ,
             child: Text('Convert'))
                ],

                
       )

    );
  }
}