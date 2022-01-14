// @dart=2.9
import 'package:flutter/material.dart';
import 'package:alpha_design/home_screen.dart';
import 'package:alpha_design/track_delivery.dart';

void main() {
  runApp(const MaterialApp(
    home:  MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _State createState() =>  _State();
}

class _State extends State<MyApp> {
   List<BottomNavigationBarItem> _items;
  final String _bValue = '';
  int index = 1;

  final List<Widget> _widgets = <Widget>[
    const Text('This is News'),
    const TrackDelivery(),
    const Text('This is it'),
  ];

  void _onTapItem(int item) {
    setState(() {
      index = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      // appBar: new AppBar(
      //     // title: new Text('Main screen '),
      //     ),

      body:  Center(child: _widgets.elementAt(index)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: 'News'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          // BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: index,
        onTap: _onTapItem,
      ),
    );
  }
}
