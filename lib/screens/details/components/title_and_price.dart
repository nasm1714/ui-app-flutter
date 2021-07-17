import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
    this.title,
    this.country,
    this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: Colors.teal[900], fontWeight: FontWeight.bold,
                        fontSize: 17,),
                ),
                TextSpan(
                  text: country,
                  style: TextStyle(
                    fontSize: 20,
        color: Colors.teal[900],
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            "\RS  $price",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: Colors.teal[900]),
          )
        ],
      ),
    );
  }
}
