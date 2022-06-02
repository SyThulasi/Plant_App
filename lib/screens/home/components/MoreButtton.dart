import 'package:flutter/material.dart';

import '../../../constants.dart';

class flat_button extends StatelessWidget {
  const flat_button({
    Key? key,
    required this.press,
  }) : super(key: key);
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onPressed: () {},
      child: Text(
        "More",
        style: TextStyle(
          color: kTextColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      color: kPrimaryColor,
    );
  }
}
