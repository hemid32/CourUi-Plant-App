import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterapp/constants.dart';

class imageAndBetitCard extends StatelessWidget {
  const imageAndBetitCard({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding ),
      child: SizedBox(
        height:  size.height *0.8,
        child: Row(
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding ),
              child: Column(
                children: [
                  Align(

                      alignment: Alignment.topLeft,
                      child: FlatButton(onPressed: (){}, child: SvgPicture.asset('assets/icons/back_arrow.svg'))) ,
                  Spacer() ,

                  BetitCardButton() ,
                  BetitCardButton() ,
                  BetitCardButton() ,
                  BetitCardButton() ,
                ],
              ),
            )),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/image_2.png')),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    )
                  ],
                  borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(36))),
            )
          ],
        ),
      ),
    );
  }
}

class BetitCardButton extends StatelessWidget {
  const BetitCardButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height  * 0.03) ,
      padding:  EdgeInsets.all(08),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(
                0 , -10
            ) ,
            color: kPrimaryColor.withOpacity(0.2) ,
            blurRadius:  22 ,


          ) ,
          BoxShadow(
            offset: Offset(
                0 , 10
            ) ,
            color: kPrimaryColor.withOpacity(0.2) ,
            blurRadius:  20 ,


          )
        ] ,
        borderRadius:  BorderRadius.circular(6)   ,
      ),
      child: SvgPicture.asset('assets/icons/sun.svg'),

    );
  }
}
