import 'package:flutter/material.dart';

class Upcoming extends StatelessWidget {
  const Upcoming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: ScheduleState()));

  }
}

class ScheduleState extends StatelessWidget {
  const ScheduleState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: UpcomingList()));
  }
}

class UpcomingList extends StatefulWidget {
  const UpcomingList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ListItemWidget();
  }
}

class ListItemWidget extends State<UpcomingList> {
  List items = getDummyList();
  bool? _isdisabled;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5.0),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Expanded(
              child: Card(
                elevation: 5,
                child: Expanded(
                  child: SizedBox(
                    // height: 100,
                    child: Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        child: Column(
                          children: [
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: SizedBox(
                                    // height: 100,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(10, 2, 0, 0),
                                      child: Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: <Widget>[
                                            // Text(
                                            // items[index],
                                            // ),
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(
                                                  0, 3, 0, 3),
                                              child: Expanded(
                                                child: Container(
                                                  width: 260,
                                                  decoration: const BoxDecoration(
                                                    // border: Border.all(color: Colors.teal),
                                                      borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              10))),
                                                  child: const Text(
                                                    "Dr. Ishola Haruna",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.w800,
                                                        fontSize: 18),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Padding(
                                              padding:
                                              EdgeInsets.fromLTRB(0, 5, 0, 2),
                                              child: Expanded(
                                                child: SizedBox(
                                                  width: 260,
                                                  child: Text(
                                                    "Physiotherapist",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Color.fromARGB(
                                                            255, 48, 48, 54)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40.0,
                                  width: 40.0,
                                  margin: const EdgeInsets.all(15.0),
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "https://uilogos.co/img/logomark/kyan.png"))),
                                ),
                              ],
                            ),
                            SizedBox(
                              child: Column(
                                children: const <Widget>[
                                  Divider(
                                    height: 1,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            5, 0, 15, 0),
                                        // width: 260,
                                        child: const Text(
                                          "27/02/2022",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 48, 48, 54)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            5, 0, 5, 0),
                                        child: const Text(
                                          "01:11 PM",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 48, 48, 54)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            15, 0, 5, 0),
                                        child: const Text(
                                          "Confirmed",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 48, 48, 54)),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                OutlinedButton(
                                  onPressed: () {
                                    // do something
                                  },
                                  child: const Text(
                                    "Cancel",
                                    style: TextStyle(
                                      color: Color(0xff251F9C),
                                    ),
                                  ),
                                ),
                                OutlinedButton(
                                  onPressed: () {
                                    // do something
                                  },
                                  style: OutlinedButton.styleFrom(
                                    side: const BorderSide(width: 2, color: Color(0xff251F9C)),
                                    backgroundColor: const Color(0xff251F9C),
                                    primary: Theme.of(context).primaryColorDark,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(7),
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    "Reschedule",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
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
