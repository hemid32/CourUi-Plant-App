import 'package:flutter/material.dart';
import 'package:flutterapp/constants.dart';

class titleWithCostomUnderLine extends StatelessWidget {
  const titleWithCostomUnderLine({
    Key key,
    this.title
  }) : super(key: key);
  final String title  ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:  24 ,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding/4),
            child: Text('$title' , style:  TextStyle( fontSize: 20 ),),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: kDefaultPadding/4) ,
              height:  7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),

    );
  }
}
