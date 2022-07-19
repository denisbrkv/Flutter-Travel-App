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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(100),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                color: primaryColor,
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.arrow_back,
                                  color: whiteColor,
                                  size: 24,
                                ),
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
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              color: whiteColor,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
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
                  ),
                ),

                ///
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.placeInfo.name,
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: primaryColor,
                                ),
                                const SizedBox(width: 6),
                                Text(widget.placeInfo.location,
                                    style: const TextStyle(
                                        color: greyColor, fontSize: 16)),
                              ],
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Trip details',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 16),
                            Text(widget.placeInfo.description,
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: greyColor,
                                )),
                            const SizedBox(height: 12),
                            const Divider(
                              height: 6,
                              color: Colors.grey,
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                const Text('Duration:',
                                    style: TextStyle(
                                        color: blackColor, fontSize: 18)),
                                const SizedBox(width: 6),
                                Expanded(
                                  child: Text('${widget.placeInfo.days} days',
                                      style: const TextStyle(
                                          color: blackColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Text('Distance:',
                                    style: TextStyle(
                                        color: blackColor, fontSize: 18)),
                                const SizedBox(width: 6),
                                Expanded(
                                  child: Text(
                                      '${widget.placeInfo.distance} kilometers',
                                      style: const TextStyle(
                                          color: blackColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            MaterialButton(
                                color: primaryColor,
                                minWidth: double.infinity,
                                height: 55,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                onPressed: () {},
                                child: const Text(
                                  'Book trip',
                                  style: TextStyle(
                                      color: blackColor,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                )),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ))
          ],
        ));
  }
}
