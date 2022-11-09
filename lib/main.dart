import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'cell_data.dart';
import 'custom_appbar.dart';
import 'my_cell.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.white,
        primary: Colors.black,
      )),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const CustomAppBar(),
        SliverList(
          delegate: SliverChildListDelegate([
            date('Yesterday'),
            MyCell(data: data[0]),
            MyCell(data: data[0]),
            MyCell(data: data[1]),
            MyCell(data: data[0]),
            date('Monday'),
            MyCell(data: data[0]),
            MyCell(data: data[0]),
            MyCell(data: data[0]),
            MyCell(data: data[0]),
            date('Wednesday'),
            MyCell(data: data[0]),
            MyCell(data: data[0]),
            date('Thursday'),
            MyCell(data: data[0]),
            MyCell(data: data[0]),
            MyCell(data: data[0]),
            date('Wednesday'),
            MyCell(data: data[0]),
          ]),
        ),
      ],
    ));
  }

  Container date(String date) {
    return Container(
        padding: const EdgeInsets.only(left: 15),
        alignment: Alignment.centerLeft,
        height: 50,
        color: Colors.grey.shade200,
        child: Text(date, style: const TextStyle(fontSize: 20)));
  }
}
