import 'package:flutter/material.dart';

import '../../../constants.dart';

class NameWithPrice extends StatelessWidget {
  const NameWithPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
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
                  text: "$title\n".toUpperCase(),
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: kTextColor, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "$country".toUpperCase(),
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
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
