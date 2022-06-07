import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

import 'icon_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
          child: SizedBox(
            height: size.height * 0.8,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: kDefaultPadding * 3,
                    ),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            padding: EdgeInsets.symmetric(
                                horizontal: kDefaultPadding),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon:
                                SvgPicture.asset("assets/icons/back_arrow.svg"),
                          ),
                        ),
                        Spacer(),
                        IconCard(image: "assets/icons/sun.svg"),
                        IconCard(image: "assets/icons/icon_2.svg"),
                        IconCard(image: "assets/icons/icon_3.svg"),
                        IconCard(image: "assets/icons/icon_4.svg"),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.8,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/img.png"),
                    ),
                    borderRadius: BorderRadius.only(
                      //topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.3),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
