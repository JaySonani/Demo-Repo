import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, I'm",
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Jay Sonani",
                style: TextStyle(fontSize: 80),
              ),
              SizedBox(
                height: 20,
              ),
              TypewriterAnimatedTextKit(
                isRepeatingAnimation: true,
                speed: Duration(milliseconds: 100),
                text: [
                  "Flutter Developer",
                  "CS Graduate",
                  "Tech-thusiast",
                ],
                textStyle: TextStyle(fontSize: 30, fontFamily: 'Lato'),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          CircleAvatar(
            radius: 150,
            backgroundImage: AssetImage('images/me.jpg'),
          )
        ],
      ),
    );
  }
}
