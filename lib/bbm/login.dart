import 'package:flutter/material.dart%20';
import 'package:prak_mobile/bbm/splashscreen.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -67,
            left: -90,
            child: Container(
              width: 558,
              height: 558,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Image(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage('image/orang.png')),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 500),
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Text('Login'),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(width: 2),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
