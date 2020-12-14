import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: Color.fromRGBO(76, 175, 80, .1),
      100: Color.fromRGBO(76, 175, 80, .2),
      200: Color.fromRGBO(76, 175, 80, .3),
      300: Color.fromRGBO(76, 175, 80, .4),
      400: Color.fromRGBO(76, 175, 80, .5),
      500: Color.fromRGBO(76, 175, 80, .6),
      600: Color.fromRGBO(76, 175, 80, .7),
      700: Color.fromRGBO(76, 175, 80, .8),
      800: Color.fromRGBO(76, 175, 80, .9),
      900: Color.fromRGBO(76, 175, 80, 1),
    };

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF4CAF50, color),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HelloWorldPage(),
    );
  }
}

class HelloWorldPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HelloWorldPageState();
  }
}

class _HelloWorldPageState extends State<HelloWorldPage> {
  String _timeString;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer timer) => _setTime());
  }

  void _setTime() {
    final String formattedTime = DateFormat("HH:mm").format(DateTime.now()).toString();
    setState(() {
      _timeString = formattedTime;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello World!",
              style: TextStyle(
                fontSize: 32,
                color: Color(0xFF4CAF50)
              ),
            ),
            Text(
              _timeString.toString(),
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFF8BC34A)
              )
            )
          ],
        ),
      ),
    );
  }
}