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
    const Home(),
    const TrackDelivery(),

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
      // appBar:  AppBar(
      //     title: const Text('Home '),
      //     ),

      appBar:  AppBar(
        title: const Text('Home '),
      ),
      drawer:  Drawer(
        child:  Container(
          padding: const EdgeInsets.all(32.0),
          child:  Column(
            children:  <Widget> [
              const Text('data'),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget> [
                  ElevatedButton(onPressed: ()=> Navigator.pop(context), child: const Text('Elevated Button'), ),
                  const TextButton(onPressed: null, child: Text('Text Button'))
                ],
              )
            ],
          ),
        ),
      ),
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
