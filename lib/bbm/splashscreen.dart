import 'package:flutter/material.dart%20';
import 'package:prak_mobile/bbm/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Bunderan(
          rad: 366,
          top: -193,
          right: -60,
          color: Colors.blue[300],
        ),
        Bunderan(
          rad: 173,
          top: -73,
          left: -32,
          color: Colors.blue[900],
        ),
        Bunderan(
          rad: 466,
          bottom: -273,
          left: -85,
          color: Colors.blue[400],
        ),
        Bunderan(
          rad: 466,
          bottom: -273,
          left: -85,
          color: Colors.blue[400],
        ),
        Bunderan(
          rad: 135,
          bottom: 27,
          right: -12,
          color: Colors.blue[800],
        ),
        Center(
          child: Image(image: AssetImage('image/logo1.png')),
        )
      ],
    ));
  }
}

class Bunderan extends StatelessWidget {
  double? top, bottom, left, right, rad;
  Color? color;
  Widget? child;
  Bunderan({
    super.key,
    this.top,
    this.bottom,
    this.left,
    this.right,
    required this.rad,
    this.color,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Container(
        width: rad,
        height: rad,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: child,
      ),
    );
  }
}
