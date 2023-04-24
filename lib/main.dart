import 'package:flutter/material.dart';
import 'package:mi_primer_app/screens/home_page.dart';
import 'package:mi_primer_app/screens/second_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //home: MyHomePage());
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => const HomePage(),
        "/second": (BuildContext context) => const SecondPage(),
      },
    );
  }
}
