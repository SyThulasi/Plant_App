import 'package:flutter/material.dart';
import 'package:plant_app/screens/details_page/components/body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen(
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
    return Scaffold(
      body: Body(
        cost: cost,
        image: image,
        title: title,
        country: country,
      ),
    );
  }
}
