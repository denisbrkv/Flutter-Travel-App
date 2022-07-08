import 'package:flutter/material.dart';
import 'package:flutter_travel_app/utilities/colors.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        // AppBar
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/icons/google.png'),
            ),
            SizedBox(width: 15),
            RichText(
                text: TextSpan(
                    text: 'Hello,',
                    style: TextStyle(color: blackColor, fontSize: 18),
                    children: [
                  TextSpan(
                      text: 'User',
                      style: TextStyle(
                          color: blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ])),
          ],
        )
      ],
    )));
  }
}
