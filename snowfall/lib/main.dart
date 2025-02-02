import 'package:flutter/material.dart';
import 'package:snowfall/snowflakes.dart';

void main() => runApp(Snowfall());

class Snowfall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ParticleBackgroundPage(),
      ),
    );
  }
}

class ParticleBackgroundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(child: Container(color: Colors.lightBlue.shade900)),
        Positioned.fill(child: Snowflakes(20)),
        Positioned.fill(child: CenteredText()),
      ],
    );
  }
}

class CenteredText extends StatelessWidget {
  const CenteredText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Happy Holidays!",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
        textAlign: TextAlign.center,
        textScaleFactor: 4,
      ),
    );
  }
}
