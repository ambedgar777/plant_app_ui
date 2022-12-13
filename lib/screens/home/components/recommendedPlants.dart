import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/details/components/details_screen.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlantCard(
            image: 'assets/images/7.jpg',
            title: 'Chris',
            country: 'Russia',
            price: 40,
            pressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),),);
            },
          ),
          RecommendedPlantCard(
            image: 'assets/images/6.jpg',
            title: 'Chris',
            country: 'Russia',
            price: 40,
            pressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),),);
            },
          ),
          RecommendedPlantCard(
            image: 'assets/images/7.jpg',
            title: 'Chris',
            country: 'Russia',
            price: 40,
            pressed: () {},
          ),
          RecommendedPlantCard(
            image: 'assets/images/6.jpg',
            title: 'Chris',
            country: 'Russia',
            price: 40,
            pressed: () {},
          ),
        ],
      ),
    );
  }
}

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.pressed,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final VoidCallback pressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        bottom: kDefaultPadding * 2.5,
        top: kDefaultPadding,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: pressed,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    )
                  ]),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                            text: '$country'.toUpperCase(),
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            ))
                      ],
                    ),
                  ),
                  Spacer(),
                  Text('\$$price',
                      style: Theme.of(context).textTheme.button!.copyWith(
                        color: kPrimaryColor,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}