import 'package:flutter/material.dart';

/*
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
*/

class ClosedOrder extends StatelessWidget {
  const ClosedOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

        body: Center(child: SwipeList()));
  }
}

class SwipeList extends StatefulWidget {
  const SwipeList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ListItemWidget();
  }
}

class ListItemWidget extends State<SwipeList> {
  List items = getDummyList();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: SizedBox(
                height: 100.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 70.0,
                      width: 70.0,
                      margin: const EdgeInsets.all(15.0),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(100)
                          ),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                              NetworkImage(
                                  "https://uilogos.co/img/logomark/kyan.png")
                          )
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Text(
                            // items[index],
                            // ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                              child: Container(
                                width: 260,
                                decoration: const BoxDecoration(
                                  // border: Border.all(color: Colors.teal),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10))
                                ),
                                child: const Text(
                                  "Genotype Test Order", textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 2),
                              child: Container(
                                width: 260,
                                child: const Text(
                                  "DjangoLaboratory",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 48, 48, 54)
                                  ),),


                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 2),
                              child: Container(
                                width: 260,
                                child: const Text(
                                  "Delivered on: 27/02/2022",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 48, 48, 54)
                                  ),),


                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }

  static List getDummyList() {
    List list = List.generate(10, (i) {
      return "Item ${i + 1}";
    });
    return list;
  }
}