// @dart=2.9
import 'package:flutter/material.dart';
import 'package:alpha_design/home_screen.dart';
import 'package:alpha_design/schedule/schedule.dart';
import 'package:alpha_design/calls/call_ended.dart';


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
  int index = 0;

  final List<Widget> _widgets = <Widget>[
    const Home(),
    const Schedule(),
    const Text('This is Messages'),
    const CallEnded(),

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

      // appBar:  AppBar(
      //   title: const Text('Home '),
      // ),
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
        unselectedItemColor: Colors.black,
        selectedItemColor: const Color(0xff251F9C),
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today_rounded), label: 'Schedule'),
          BottomNavigationBarItem(icon: Icon(Icons.mail_outline), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: index,
        onTap: _onTapItem,
      ),
    );
  }
}
