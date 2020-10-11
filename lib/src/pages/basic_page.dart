import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final styleTitle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final styleSubtitle = TextStyle(fontSize: 18, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        _banner(),
        _title(),
        _buttons(),
        _description(),
        _description(),
      ]),
    ));
  }

  Widget _banner() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
          'https://i.pinimg.com/originals/a1/78/55/a1785592d41e140f00ef1cf3d9597dcb.png',
        ),
        height: 240,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _title() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bosque',
                    style: styleTitle,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Un bosque que se encuentra en Alemania',
                    style: styleSubtitle,
                  )
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30),
            Text(
              '41',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  _buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _createAction(Icons.call, 'Call'),
        _createAction(Icons.near_me, 'Route'),
        _createAction(Icons.share, 'Share'),
      ],
    );
  }

  Widget _createAction(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 30),
        SizedBox(height: 5),
        Text(text, style: TextStyle(fontSize: 15, color: Colors.blue))
      ],
    );
  }

  Widget _description() {
    return SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            textAlign: TextAlign.justify,
          )),
    );
  }
}
