import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

SizedBox HeaderWithSearchBox(Size size, BuildContext context) {
  return SizedBox(
    height: size.height * 0.2,
    child: Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            bottom: kDefaultPadding + 20,
          ),
          height: size.height * 0.2 - 27,
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            ),
          ),
          child: Row(
            children: <Widget>[
              Text(
                "Hi Sy Thulasi...!",
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Spacer(),
              Image.asset(
                "assets/images/logo.png",
                scale: size.width * 0.001,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 54,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(27),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23)),
              ],
            ),
            child: Row(
              children: <Widget>[
                const SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: kPrimaryColor.withOpacity(0.5),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                SvgPicture.asset("assets/icons/search.svg"),
                SizedBox(
                  width: 25,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
