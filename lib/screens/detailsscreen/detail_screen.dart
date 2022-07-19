import 'package:flutter/material.dart';
import 'package:flutter_travel_app/model/place_model.dart';
import 'package:flutter_travel_app/utilities/colors.dart';

class DetailScreen extends StatefulWidget {
  final PlaceInfo placeInfo;
  DetailScreen({Key? key, required this.placeInfo}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: Stack(
          children: [
            Image.asset(
              widget.placeInfo.image,
              width: double.infinity,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            SafeArea(
                child: Column(
              children: [
                // AppBar buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(100),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back,
                              color: whiteColor,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(100),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.bookmark_rounded,
                              color: primaryColor,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ))
          ],
        ));
  }
}
