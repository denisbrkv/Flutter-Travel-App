import 'package:flutter/material.dart';
import 'package:flutter_travel_app/model/place_model.dart';
import 'package:flutter_travel_app/screens/home/widgets/category_card.dart';
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
                color: whiteColor, borderRadius: BorderRadius.circular(100)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
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
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
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
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 10),
        Container(
            height: 350,
            child: ListView.builder(
                itemCount: places.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5, right: 15),
                    child: Row(
                      children: [
                        RecommendedCard(
                          placeInfo: places[index],
                          press: () {},
                        )
                      ],
                    ),
                  );
                })),
      ]),
    )));
  }
}

class RecommendedCard extends StatelessWidget {
  final PlaceInfo placeInfo;
  final VoidCallback press;
  const RecommendedCard({
    Key? key,
    required this.placeInfo,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: 200,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(placeInfo.image))),
              ),
            ),
            const SizedBox(height: 10),
            Text(placeInfo.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: primaryColor,
                ),
                Text(placeInfo.location,
                    style: const TextStyle(color: Colors.grey, fontSize: 14))
              ],
            )
          ],
        ),
      ),
    );
  }
}
