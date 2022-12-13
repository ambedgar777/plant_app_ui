import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/home/components/button_with_more_title.dart';
import 'package:plant_app_ui/screens/home/components/featured_plants.dart';
import 'package:plant_app_ui/screens/home/components/header_with_search_box.dart';
import 'package:plant_app_ui/screens/home/components/recommendedPlants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    //it will provide us all the space of our device screen!
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          ButtonWithMoreTitle(
            title: 'more',
            press: () {},
          ),
          RecommendedPlants(),
          ButtonWithMoreTitle(title: 'Featured Plants', press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
