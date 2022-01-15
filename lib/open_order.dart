import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: OpenOrder(),
  ));
}

class OpenOrder extends StatefulWidget {
  const OpenOrder({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<OpenOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child:  Center(
         child: Column(
           children: <Widget>[
              Card(
               child: Container(
                 padding: const EdgeInsets.all(10.0),
                child:  Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.all(10.0),
                        child: Image.asset('assets/images/splash.jpeg', height: 40, width: 40)
                    ),
                      Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  const <Widget>[
                        Text('Genotype Test Order', style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20.0,
                        ) ,),
                        Text('DjangoLaboratory'),
                        Text('initialised on: 26/02/2022'),
                      ],
                    ),
                  ],
                ),

               ),
             ),
             Card(
               child: Container(
                 padding: const EdgeInsets.all(10.0),
                 child:  Row(
                   children: [
                     Container(
                         margin: const EdgeInsets.all(10.0),
                         child: Image.asset('assets/images/splash.jpeg', height: 40, width: 40)
                     ),
                     Column(
                       mainAxisSize: MainAxisSize.min,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:  const <Widget>[
                         Text('Genotype Test Order', style: TextStyle(
                           fontWeight: FontWeight.w900,
                           fontSize: 20.0,
                         ) ,),
                         Text('DjangoLaboratory'),
                         Text('initialised on: 26/02/2022'),
                       ],
                     ),
                   ],
                 ),

               ),
             ),
             Card(
               child: Container(
                 padding: const EdgeInsets.all(10.0),
                 child:  Row(
                   children: [
                     Container(
                         margin: const EdgeInsets.all(10.0),
                         child: Image.asset('assets/images/splash.jpeg', height: 40, width: 40)
                     ),
                     Column(
                       mainAxisSize: MainAxisSize.min,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:  const <Widget>[
                         Text('Genotype Test Order', style: TextStyle(
                           fontWeight: FontWeight.w900,
                           fontSize: 20.0,
                         ) ,),
                         Text('DjangoLaboratory'),
                         Text('initialised on: 26/02/2022'),
                       ],
                     ),
                   ],
                 ),

               ),
             ),
             Card(
               child: Container(
                 padding: const EdgeInsets.all(10.0),
                 child:  Row(
                   children: [
                     Container(
                         margin: const EdgeInsets.all(10.0),
                         child: Image.asset('assets/images/splash.jpeg', height: 40, width: 40)
                     ),
                     Column(
                       mainAxisSize: MainAxisSize.min,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:  const <Widget>[
                         Text('Genotype Test Order', style: TextStyle(
                           fontWeight: FontWeight.w900,
                           fontSize: 20.0,
                         ) ,),
                         Text('DjangoLaboratory'),
                         Text('initialised on: 26/02/2022'),
                       ],
                     ),
                   ],
                 ),

               ),
             ), Card(
               child: Container(
                 padding: const EdgeInsets.all(10.0),
                 child:  Row(
                   children: [
                     Container(
                         margin: const EdgeInsets.all(10.0),
                         child: Image.asset('assets/images/splash.jpeg', height: 40, width: 40)
                     ),
                     Column(
                       mainAxisSize: MainAxisSize.min,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:  const <Widget>[
                         Text('Genotype Test Order', style: TextStyle(
                           fontWeight: FontWeight.w900,
                           fontSize: 20.0,
                         ) ,),
                         Text('DjangoLaboratory'),
                         Text('initialised on: 26/02/2022'),
                       ],
                     ),
                   ],
                 ),

               ),
             ),
           ],
         ),
        ),
      ),
    );
  }
}
