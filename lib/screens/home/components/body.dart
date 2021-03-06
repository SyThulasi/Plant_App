import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/recommended_plant.dart';
import 'package:plant_app/screens/home/components/title_with_customLine.dart';

import '../../details_page/details_page.dart';
import 'MoreButtton.dart';
import 'feature_plants.dart';
import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It will return the height and width of the screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size, context),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
            ),
            child: Row(
              children: <Widget>[
                const TitleWithCustomLine(text: "Recomended"),
                Spacer(),
                flat_button(
                  press: () {},
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecommendedPlantCard(
                  country: 'Russia',
                  title: "samantha",
                  cost: 400,
                  image: "assets/images/image_1.png",
                ),
                RecommendedPlantCard(
                  country: 'Srilanka',
                  title: "Anushka",
                  cost: 300,
                  image: "assets/images/image_2.png",
                ),
                RecommendedPlantCard(
                  country: 'India',
                  title: "sunny",
                  cost: 1000,
                  image: "assets/images/image_3.png",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
            ),
            child: Row(
              children: <Widget>[
                const TitleWithCustomLine(text: "Featured Plant"),
                const Spacer(),
                flat_button(
                  press: () {},
                )
              ],
            ),
          ),
          FeaturePlants(),
          const SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
