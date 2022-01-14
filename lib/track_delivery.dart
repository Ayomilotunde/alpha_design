import 'package:flutter/material.dart';
import 'package:alpha_design/home_screen.dart';
import 'package:alpha_design/open_order.dart';
import 'package:alpha_design/closed_order.dart';

void main() {
  runApp(const MaterialApp(
    home: TrackDelivery(),
  ));
}



class TrackDelivery extends StatefulWidget {
  const TrackDelivery({Key? key}) : super(key: key);
  @override
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TrackDelivery>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [

     const Tab(
    text: 'Open Order',
     ),
    const Tab(
      text: 'Closed Order',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            onTap: (index) {
              // Should not used it as it only called when tab options are clicked,
              // not when user swapped
            },
            controller: _controller,
            tabs: list,
            labelColor: Colors.black,
          ),
          title: const Text('Track Delivery'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: TabBarView(
          controller: _controller,
          children: const [
            Center(
              child: OpenOrder()
        ),
            Center(
                child: ClosedOrder()),
          ],
        ),
      ),
    );
  }
}

//
// class _State extends State<TrackDelivery> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: const Text('Track Delivery'),
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.black,
//       ),
//
//
//       body: Container(
//         padding: const EdgeInsets.all(20.0),
//         child: const Center(
//           child: Text('Home'),
//         ),
//
//       ),
//     );
//   }
// }
