import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/title_with_customLine.dart';

import 'icon_card.dart';
import 'image_and_icon_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        ImageAndIconCard(size: size),
        Padding(
          padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: kDefaultPadding),
          child: Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Samantha\n".toUpperCase(),
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: kTextColor, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: "Russia".toUpperCase(),
                      style: TextStyle(
                          fontSize: 20,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
              Spacer(),
              Text(
                "\$400",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: kPrimaryColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
