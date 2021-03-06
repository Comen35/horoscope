import 'package:flutter/material.dart';
import 'horoscope_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 28),
          iconTheme: IconThemeData(color: Colors.white)
        ),
      ),
      home: HoroscopeList(),
    );
  }
}
