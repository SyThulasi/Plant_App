import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithCustomLine extends StatelessWidget {
  const TitleWithCustomLine({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: kDefaultPadding / 4,
            ),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 1,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(
                right: kDefaultPadding / 4,
              ),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
