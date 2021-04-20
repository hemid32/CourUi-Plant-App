import 'package:flutter/material.dart';
import 'package:flutterapp/constants.dart';

class FutureCardButtom extends StatelessWidget {
  const FutureCardButtom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ButtomCardFuture(image:'assets/images/bottom_img_1.png'  , onPress:  (){},),
          ButtomCardFuture(image:'assets/images/bottom_img_2.png'  , onPress:  (){},),
          ButtomCardFuture(image:'assets/images/bottom_img_1.png'  , onPress:  (){},),
          ButtomCardFuture(image:'assets/images/bottom_img_2.png'  , onPress:  (){},),
        ],
      ),
    );
  }
}

class ButtomCardFuture extends StatelessWidget {
  const ButtomCardFuture({
    Key key, this.image, this.onPress
  }) : super(key: key);
  final String image ;
  final Function onPress ;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;

    return GestureDetector(
      onTap: onPress ,
      child: Container(
        margin: EdgeInsets.only(left: kDefaultPadding /2, top:  kDefaultPadding , bottom:  kDefaultPadding ),
        width:  size.width * 0.8 ,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20) ,
          boxShadow: [
            BoxShadow(
                color: kPrimaryColor.withOpacity(0.23) ,
                offset: Offset(0,10) ,
                blurRadius: 50
            ) ,

          ] ,
          image: DecorationImage(image:AssetImage(image ),fit: BoxFit.cover) ,




        ),
      ),
    );
  }
}
