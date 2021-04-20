import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterapp/constants.dart';

class BottonBarNavigatorCostom extends StatelessWidget {
  const BottonBarNavigatorCostom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.only(
        left: kDefaultPadding ,
        top:  kDefaultPadding / 2  ,
        bottom: kDefaultPadding ,
        right:  kDefaultPadding  ,
      ),
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0,-10) ,
                color: kPrimaryColor.withOpacity(0.23) ,
                blurRadius:  50

            ) ,

          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon:             SvgPicture.asset('assets/icons/icon_4.svg')
            , onPressed: (){} , ) ,
          IconButton(icon:             SvgPicture.asset('assets/icons/icon_3.svg')
              , onPressed: (){} ) ,
          IconButton(icon:             SvgPicture.asset('assets/icons/icon_4.svg')
              , onPressed: (){} ) ,
        ],
      ),

    );
  }
}
