import 'package:flutter/material.dart';

class Technologies extends StatefulWidget {
  @override
  _TechnologiesState createState() => _TechnologiesState();
}

class _TechnologiesState extends State<Technologies> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          AnimatedContainer(
              duration: Duration(seconds: 1),
              margin: EdgeInsets.only(top: 100, left: 100),
              width: 400,
              height: 200,
              color: Colors.red,
              child: Image.asset('images/flutter_logo.png'))
        ],
      ),
    );
  }
}
