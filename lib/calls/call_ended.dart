import 'package:flutter/material.dart';

class CallEnded extends StatefulWidget {
  const CallEnded({Key? key}) : super(key: key);

  @override
  _CallEndedState createState() => _CallEndedState();
}

class _CallEndedState extends State<CallEnded> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: SingleChildScrollView(
        child: Column(
            children: [
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children:  [
                  const SizedBox(
                    height: 80,
                  ),
                  _logo(),
                  const SizedBox(
                    height: 20,
                  ),
                  _callEndedText(),
                  const SizedBox(
                    height: 30,
                  ),
                  _callProfileCard(),
                  const SizedBox(
                    height: 30,
                  ),
                  _submitReview()
                ],
              ),
            ),
          ),
        ]),
        ),

      ),
    ));
  }

  Widget _callEndedText() {
    return const Center(
      child: Text('Your session has ended',
        style: TextStyle(
        color: Color(0xff251F9C),
        fontWeight: FontWeight.w700,
        fontSize: 30,
      ),),
    );
  }

 Widget _callProfileCard() {
    return Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: SizedBox(
        // height: 100,
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 50.0,
                    margin: const EdgeInsets.all(15.0),
                    decoration: const BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(100)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://uilogos.co/img/logomark/kyan.png"))),
                  ),
                  SizedBox(
                    // height: 100,
                    child: Padding(
                      padding:
                      const EdgeInsets.fromLTRB(10, 2, 0, 0),
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
                          const Padding(
                            padding:
                            EdgeInsets.fromLTRB(0, 5, 0, 2),
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
                          const Padding(
                            padding:
                            EdgeInsets.fromLTRB(0, 5, 0, 2),
                            child: SizedBox(
                              width: 260,
                              child: Text(
                                "Tuesday, 14 November 2021 | 4PM",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(
                                        255, 48, 48, 54)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                       Padding(
                        padding: const EdgeInsets.fromLTRB(
                            0, 3, 0, 3),
                        child: Container(
                          margin: const EdgeInsets.all(2.0),
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            // border: Border.all(color: Colors.teal),
                              borderRadius:
                              BorderRadius.all(
                                  Radius.circular(10))),
                          child: const Text(
                            "Call Summary",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight:
                                FontWeight.w800,
                                fontSize: 18),
                          ),
                        ),
                      ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Padding(
                             padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                             child: Container(
                               margin: const EdgeInsets.all(5.0),
                               decoration: const BoxDecoration(
                                 // border: Border.all(color: Colors.teal),
                                   borderRadius:
                                   BorderRadius.all(
                                       Radius.circular(10))),
                               child: const Text(
                                 "Status",
                                 textAlign: TextAlign.start,
                                 style: TextStyle(
                                     color: Colors.grey,
                                     fontWeight:
                                     FontWeight.w500,
                                     fontSize: 18),
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                             child: Container(
                               margin: const EdgeInsets.all(5.0),
                               decoration: const BoxDecoration(
                                 // border: Border.all(color: Colors.teal),
                                   borderRadius:
                                   BorderRadius.all(
                                       Radius.circular(10))),
                               child: const Text(
                                 "Ended",
                                 textAlign: TextAlign.start,
                                 style: TextStyle(
                                     color: Colors.red,
                                     fontWeight:
                                     FontWeight.w500,
                                     fontSize: 18),
                               ),
                             ),
                           ),
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Padding(
                             padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                             child: Container(
                               margin: const EdgeInsets.all(5.0),
                               decoration: const BoxDecoration(
                                 // border: Border.all(color: Colors.teal),
                                   borderRadius:
                                   BorderRadius.all(
                                       Radius.circular(10))),
                               child: const Text(
                                 "Call duration",
                                 textAlign: TextAlign.start,
                                 style: TextStyle(
                                     color: Colors.grey,
                                     fontWeight:
                                     FontWeight.w500,
                                     fontSize: 18),
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                             child: Container(
                               margin: const EdgeInsets.all(5.0),
                               decoration: const BoxDecoration(
                                 // border: Border.all(color: Colors.teal),
                                   borderRadius:
                                   BorderRadius.all(
                                       Radius.circular(10))),
                               child: const Text(
                                 "2:45",
                                 textAlign: TextAlign.start,
                                 style: TextStyle(
                                     color: Colors.black,
                                     fontWeight:
                                     FontWeight.w500,
                                     fontSize: 18),
                               ),
                             ),
                           ),
                         ],
                       ),
                      const SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                          0, 3, 0, 3),
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(10,0,0,0),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          // border: Border.all(color: Colors.teal),
                            borderRadius:
                            BorderRadius.all(
                                Radius.circular(10))),
                        child: const Text(
                          "Write a review",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight:
                              FontWeight.w800,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                          0, 3, 0, 3),
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(10,8,0,10),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          // border: Border.all(color: Colors.teal),
                            borderRadius:
                            BorderRadius.all(
                                Radius.circular(10))),
                        child: const Text(
                          "Rating",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight:
                              FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                          0, 3, 0, 0),
                      child: Container(
                        width: double.infinity,
                        decoration:  BoxDecoration(
                          border: Border.all(color: Colors.grey),
                            borderRadius: const BorderRadius.all(Radius.circular(10))),
                        child: const TextField(
                          minLines: 7,
                          cursorColor: Colors.deepPurple,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400
                          ),
                          keyboardType: TextInputType.multiline,
                          maxLines: 20,
                          decoration: InputDecoration(
                              hintText: 'Write review',
                            border: InputBorder.none,
                          ),
                        )
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  _submitReview() {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      height: 60,


      child: OutlinedButton(
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
          "Submit Review",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );


}
}

Widget _logo() {
  String logoIcon = "https://uilogos.co/img/logomark/kyan.png";


  return Center(
    child: SizedBox(
      child: Image.network(logoIcon),
      height: 50,
      width: 50,
    ),
  );
}