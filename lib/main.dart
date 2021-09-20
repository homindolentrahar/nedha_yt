import 'package:flutter/material.dart';
import 'package:nedha_yt/theme/color.dart';
import 'package:nedha_yt/ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
        primaryColor: AppColor.primary,
        canvasColor: AppColor.white,
        fontFamily: "Rubik",
      ),
      home: const HomePage(),
    );
  }
}