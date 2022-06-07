import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: size.height * 0.075,
      width: size.height * 0.075,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            color: kPrimaryColor.withOpacity(0.25),
            blurRadius: 22,
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            color: Colors.white,
            blurRadius: 20,
          ),
        ],
      ),
      child: SvgPicture.asset(image),
    );
  }
}
