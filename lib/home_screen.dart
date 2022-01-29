import 'package:flutter/material.dart';
import 'package:alpha_design/orders/track_delivery.dart';

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

      body: Container(
        padding: const EdgeInsets.all(20.0),
        child:  Center(
          child: ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TrackingOrder())), child: const Text('Tracking Order')),
        ),
      ),
    );
  }
}
