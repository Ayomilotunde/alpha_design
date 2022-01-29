import 'package:alpha_design/schedule/upcoming.dart';
import 'package:flutter/material.dart';
import 'package:alpha_design/schedule/completed.dart';
import 'package:alpha_design/schedule/canceled.dart';
import 'package:alpha_design/orders/closed_order.dart';

void main() => runApp(const Schedule());

class Schedule extends StatelessWidget {
  const Schedule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Schedule';

    return DefaultTabController(
      length: 3,
      // title: title,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffD6D5FB),
                ),
                height: 40.0,
                child: TabBar(
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), // Creates border
                    color: const Color(0xff251F9C),
                  ),
                  tabs: const [
                    Tab(
                        child: Text('Upcoming',)),
                    Tab(child: Text('Completed')),
                    Tab(child: Text('Canceled')),
                  ],
                ),
              ),
              preferredSize: const Size.fromHeight(70.0)),
          title:  const Text(title),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: const Icon(Icons.arrow_back_ios),

          centerTitle: true,
        ),
        body: const TabBarView(
          children: [
            Center(child: Upcoming()),
            Center(child: Completed()),
            Center(child: Canceled()),
          ],
        ),
      ),
    );
  }
}

