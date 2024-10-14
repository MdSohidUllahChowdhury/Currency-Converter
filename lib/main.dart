import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:currency_converter/converter.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: const Size(360, 640),
    builder: (context, child) 
    => const MaterialApp(
        debugShowCheckedModeBanner: false, 
        home: ConverterScreen()
        ),
  ));
}
