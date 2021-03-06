import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details_page/components/titleAndPrice.dart';
import 'package:plant_app/screens/home/components/title_with_customLine.dart';

import 'icon_card.dart';
import 'image_and_icon_card.dart';

class Body extends StatelessWidget {
  const Body(
      {Key? key,
      required this.title,
      required this.country,
      required this.image,
      required this.cost})
      : super(key: key);

  final String title, country, image;
  final int cost;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        ImageAndIconCard(
          size: size,
          image: image,
        ),
        NameWithPrice(
          price: cost,
          title: title,
          country: country,
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: size.width / 2,
              height: size.height * 0.065,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  ),
                ),
                color: kPrimaryColor,
                onPressed: () {},
                child: Text(
                  "Buy Now!",
                  style: TextStyle(
                    color: kBackgroundColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width / 2,
              height: size.height * 0.065,
              child: FlatButton(
                color: kBackgroundColor,
                onPressed: () {},
                child: Text(
                  "Description",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
