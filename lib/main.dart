import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: Container(
              child: Text(
                '0',
                style: TextStyle(fontSize: 45),
              ),
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomRight,
            )),
            Padding(padding: EdgeInsets.all(20)),
            Row(
              children: [
                CustomOutlinedButton('1'),
                CustomOutlinedButton('2'),
                CustomOutlinedButton('3'),
                CustomOutlinedButton('+')
              ],
            ),
            Row(
              children: [
                CustomOutlinedButton('4'),
                CustomOutlinedButton('5'),
                CustomOutlinedButton('6'),
                CustomOutlinedButton('-')
              ],
            ),
            Row(
              children: [
                CustomOutlinedButton('7'),
                CustomOutlinedButton('8'),
                CustomOutlinedButton('9'),
                CustomOutlinedButton('x')
              ],
            ),
            Row(
              children: [
                CustomOutlinedButton('C'),
                CustomOutlinedButton('0'),
                CustomOutlinedButton('='),
                CustomOutlinedButton('/')
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget CustomOutlinedButton(String num) {
    if (num != 'C' && num != '+' && num != '-' && num != 'x' && num != '/') {
      return Expanded(
        child: OutlineButton(
          padding: EdgeInsets.all(25),
          child: Text(
            num,
            style: TextStyle(fontSize: 35, color: Colors.blueAccent),
          ),
          onPressed: () {},
        ),
      );
    } else if ((num == '+' || num != '-' || num != 'x' || num != '/') &&
        num != 'C') {
      return Expanded(
        child: OutlineButton(
          padding: EdgeInsets.all(25),
          child: Text(
            num,
            style: TextStyle(fontSize: 35, color: Colors.green),
          ),
          onPressed: () {},
        ),
      );
    } else {
      return Expanded(
        child: OutlineButton(
          padding: EdgeInsets.all(25),
          child: Text(
            num,
            style: TextStyle(fontSize: 35, color: Colors.red),
          ),
          onPressed: () {},
        ),
      );
    }
  }
}
