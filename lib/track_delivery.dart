import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MyApp2(),
//   );
// }

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Track Delivery';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          // elevation: 10,
          title: const Text('Track Delivery'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: const Icon(Icons.arrow_back_ios),
          actions: const [
            Icon(Icons.search),
          ],
          centerTitle: true,
        ),
        body: const Center(),
      ),
    );
  }
}
