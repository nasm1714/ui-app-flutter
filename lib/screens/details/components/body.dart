import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(title: "Potted Monstera", country: "KSA", price: 800 ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
 
                    borderRadius: BorderRadius.only(
                      
                        bottomLeft: Radius.circular(700),
                      bottomRight: Radius.circular(700),
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80),


                      
                       
                      ),
                  ),
                  color: Colors.green[700],
                  onPressed: () {},
                  child: Text(
                    "The detiles",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
          
              SizedBox(
                
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                       
                       bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80),
                      topLeft: Radius.circular(700),
                      topRight: Radius.circular(700),
                    ),
                  ),
        color: Colors.teal[900],
                  onPressed: () {},
                  child: Text(
                    "Add to cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
               
            ],
          ),
        ],
      ),
    );
  }
}
