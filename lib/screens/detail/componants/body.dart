import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterapp/constants.dart';
import 'package:flutterapp/screens/detail/componants/imageAndSmailleCadr.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          imageAndBetitCard() ,
          TitleAndPrice() ,
          SizedBox(height: kDefaultPadding,) ,
          Row(
            children: [
              SizedBox(
                height: 80,
                width: size.width /2 ,
                child:  FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20)
                    )
                  ),
                  onPressed: (){},
                  color: kPrimaryColor,
                  child: Text('By now'),


                ),
              ),
              SizedBox(
                height: 84,
                width: size.width /2 ,
                child:  FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20)
                      )
                  ),
                  onPressed: (){},
                  child: Text('By now'),


                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
      children: [
        RichText(text: TextSpan(
          children: [
            TextSpan(text: 'Angolica\n' , style: Theme.of(context).textTheme.headline5 ) ,
            TextSpan(text: 'hemidi' , style: TextStyle(
              fontSize: 15 ,
              fontWeight: FontWeight.w300 ,
              color: kPrimaryColor.withOpacity(0.8)
            ) ) ,
          ]
        )) ,
        Spacer() ,
        Text('\$400' , style:  TextStyle(
          color: kPrimaryColor ,
          fontWeight: FontWeight.bold ,
          fontSize:  20
        ),) ,

      ],
      ),
    );
  }
}

