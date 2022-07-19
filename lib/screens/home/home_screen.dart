import 'package:flutter/material.dart';
import 'package:flutter_travel_app/model/place_model.dart';
import 'package:flutter_travel_app/screens/detailsscreen/detail_screen.dart';
import 'package:flutter_travel_app/screens/home/widgets/category_card.dart';
import 'package:flutter_travel_app/screens/home/widgets/recommended_card.dart';
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
        backgroundColor: whiteColor,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.home_rounded,
                size: 36,
                color: primaryColor,
              ),
              Icon(
                Icons.calendar_month_rounded,
                size: 36,
                color: greyColor,
              ),
              Icon(
                Icons.bookmark_rounded,
                size: 36,
                color: greyColor,
              ),
              Icon(
                Icons.messenger_rounded,
                size: 36,
                color: greyColor,
              ),
            ],
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: SingleChildScrollView(
            child: Column(children: [
              // AppBar
              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/icons/google.png'),
                    backgroundColor: whiteColor,
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
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(100)),
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
              ),
              // Category
              const SizedBox(height: 15),
              Row(
                children: [
                  Text('Category',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        CategoryCard(
                          image: 'assets/images/mountains.jpeg',
                          press: () {},
                          title: 'Mountains',
                        ),
                        CategoryCard(
                          image: 'assets/images/forests.jpeg',
                          press: () {},
                          title: 'Forests',
                        ),
                        CategoryCard(
                          image: 'assets/images/sea.webp',
                          press: () {},
                          title: 'Sea',
                        ),
                        CategoryCard(
                          image: 'assets/images/deserts.jpeg',
                          press: () {},
                          title: 'Deserts',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Recommended section
              const SizedBox(height: 10),
              Row(
                children: [
                  Text('Recomended',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 320,
                child: ListView.builder(
                    itemCount: places.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 5, right: 15, bottom: 10),
                        child: Row(
                          children: [
                            RecommendedCard(
                              placeInfo: places[index],
                              press: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailScreen(
                                            placeInfo: places[index])));
                              },
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ]),
          ),
        )));
  }
}
