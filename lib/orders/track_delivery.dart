import 'package:flutter/material.dart';
import 'package:alpha_design/orders/open_order.dart';
import 'package:alpha_design/orders/closed_order.dart';

void main() => runApp(const TrackingOrder());

class TrackingOrder extends StatelessWidget {
  const TrackingOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Track Delivery';

    return DefaultTabController(
      length: 2,
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
                        child: Text(
                      'Open Order',
                    )),
                    Tab(child: Text('Closed Order')),
                  ],
                ),
              ),
              preferredSize: const Size.fromHeight(70.0)),
          title: const Text('Track Delivery'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: const Icon(Icons.arrow_back_ios),
          actions: const [
            Icon(Icons.search),
          ],
          centerTitle: true,
        ),
        body: const TabBarView(
          children: [
            Center(child: OpenOrder()),
            Center(child: ClosedOrder()),
          ],
        ),
      ),
    );
  }
}
