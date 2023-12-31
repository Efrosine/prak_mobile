import 'package:flutter/material.dart';
import 'package:prak_mobile/bbm/splashscreen.dart';
import 'package:prak_mobile/modul2.dart';
import 'package:prak_mobile/modul3/article.dart';
import 'package:prak_mobile/modul4/listview.dart';
import 'package:prak_mobile/resume/resume.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash(),
    );
  }
}
