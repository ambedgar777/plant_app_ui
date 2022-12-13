import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/details/components/images_and_icons_card.dart';
import 'package:plant_app_ui/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ImagesAndIconCard(size: size),
          TitleAndPrice(title: 'Anglina', country: 'Russia', price: 440,),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width/2,
                height: 84,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),),
                  ),
                  onPressed: (){}, child: Text('Buy Now', style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),),
                  
                ),
              ),
              SizedBox(
                width: size.width/2,
                height: 84,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      style: BorderStyle.none,
                    )
                  ),
                  onPressed: (){}, child: Text('Description', style: TextStyle(
                  color: Colors.black,
                ),),

                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
