import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _pageOne(),
          _pageTwo(),
        ],
      ),
    );
  }

  Widget _pageOne() {
    return Stack(
      children: [_colorFondo(), _imageFondo(), _createText()],
    );
  }

  Widget _pageTwo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1),
      child: Center(
        child: RaisedButton(
          color: Colors.grey,
          textColor: Colors.white,
          onPressed: (){

        }, child: Padding(padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15), child: Text('Bienvenidos', style: TextStyle(fontSize: 20))),
        shape: StadiumBorder(),)
      ),
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1),
    );
  }

  Widget _imageFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/img/scroll.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createText() {
    final styleText = TextStyle(color: Colors.white, fontSize: 50);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            '11º',
            style: styleText,
          ),
          Text(
            'Miércoles',
            style: styleText,
          ),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_up,
            size: 70,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
