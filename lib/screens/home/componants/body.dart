


import 'package:flutter/material.dart';
import 'package:flutterapp/constants.dart';
import 'package:flutterapp/screens/home/componants/futureCardButtom.dart';
import 'package:flutterapp/screens/home/componants/recommendedCadr.dart';
import 'package:flutterapp/screens/home/componants/titleWithButtonMore.dart';

import 'header_and_search.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return SingleChildScrollView(
      child: Column(

        children: [

          header_and_search(size: size) ,
          TitleWithButtonMore(onPress: (){}, title:  'Recomended',) ,
          RecommendedCadrSingleScroll(size: size) ,
          TitleWithButtonMore(title: 'hemidi benameur', onPress:  (){},) ,
          FutureCardButtom() ,




        ],

      ),
    );
  }
}


