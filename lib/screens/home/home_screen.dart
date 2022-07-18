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
            child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        children: [
          // AppBar
          Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/icons/google.png'),
              ),
              const SizedBox(width: 15),
              RichText(
                  text: const TextSpan(
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
          ),
          // Search section
          const SizedBox(height: 15),
          const Text('Explore new destinations',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(100),
            child: Container(
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(100)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Search your destination',
                          prefixIcon: Icon(Icons.search),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      radius: 18,
                      backgroundColor: primaryColor,
                      child: Icon(
                        Icons.sort_by_alpha_sharp,
                        color: whiteColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    )));
  }
}
