import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondoApp(context),
          SingleChildScrollView(
              child: Column(
            children: [
              _titles(),
              _buttonsCard(),
            ],
          ))
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),

      //  BottomNavigationBar(items: <BottomNavigationBarItem>[
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.calendar_today),
      //     title: Container(),
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.insert_chart),
      //     title: Container(),
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.supervised_user_circle),
      //     title: Container(),
      //   )
      // ]),
    );
  }

  Widget _fondoApp(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;

    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Color.fromRGBO(52, 54, 101, 1), Color.fromRGBO(35, 37, 57, 1)],
        begin: FractionalOffset(0, 0.6),
        end: FractionalOffset(0, 1),
      )),
    );

    final boxPink = Transform.rotate(
      angle: -pi / 5,
      child: Container(
        height: sizeScreen.height * 0.5,
        width: sizeScreen.width * 0.9,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1)
            ]),
            borderRadius: BorderRadius.circular(90)),
      ),
    );
    return Stack(
      children: [gradient, Positioned(top: -100, child: boxPink)],
    );
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify Transaction',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text('Classify this transaction into a particylar category',
                style: TextStyle(color: Colors.white, fontSize: 18))
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(55, 57, 84, 1),
            primaryColor: Colors.pinkAccent,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1)))),
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today, size: 30), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart, size: 30), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle, size: 30),
              title: Container()),
        ]));
  }

  Widget _buttonsCard() {
    return Table(
      children: [
        TableRow(children: _groupCard()),
        TableRow(children: _groupCard()),
        TableRow(children: _groupCard())
      ],
    );
  }

  List<Widget> _groupCard() {
    return [_card(), _card()];
  }

  Widget _card() {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
        child: Container(
          height: 180,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.pinkAccent,
                child: Icon(Icons.insert_chart, color: Colors.white, size: 30),
              ),
              Text('Hola', style: TextStyle(color: Colors.pinkAccent))
            ],
          ),
        ),
      ),
    );
  }
}
