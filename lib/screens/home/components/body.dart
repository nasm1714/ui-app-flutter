import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'the new.dart';
import 'header_with_seachbox.dart';
import 'types of plants.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Types of plants", press: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "New Arrivals", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
