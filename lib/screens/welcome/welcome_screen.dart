import 'package:flutter/material.dart';
import 'package:flutter_travel_app/screens/home/home_screen.dart';
import 'package:flutter_travel_app/utilities/colors.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/images/welcome.jpeg',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  const Text('Welcome',
                      style: TextStyle(
                        fontSize: 30,
                        color: whiteColor,
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(height: 15),
                  const Text(
                    'The journey is your home. Explore the world with our travel app and get the feeling like your own home.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(height: 15),

                  // Login button
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(100)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/google.png',
                                height: 40, width: 40),
                            SizedBox(width: 10),
                            const Text('Continue with Google',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                          ]),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.07),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
