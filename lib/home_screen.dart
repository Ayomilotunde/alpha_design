import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<Home> {

  void _floating() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton:  FloatingActionButton(onPressed: _floating,
      backgroundColor: Colors.amber,
        mini: true,
        child: const Icon(Icons.add),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: const Center(
          child: Text('This is my Home'),
        ),
      ),
    );
  }
}
