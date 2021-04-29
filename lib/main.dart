import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    title: 'Magic 8 ball',
    home: Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        centerTitle: true,
        title: Text(
          'Ask me Anything',
          style: TextStyle(
            fontFamily: 'Original',
          ),
        ),
      ),
      body: HomePage(),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int ansCount=1;
  void getAnswer(){
    setState(() {
      ansCount=Random().nextInt(5)+1;
      //print(ansCount);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: FlatButton(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('images/ball$ansCount.png'),
          ),
          onPressed: (){
            getAnswer();
          },
        ),
      ),
    );
  }
}

