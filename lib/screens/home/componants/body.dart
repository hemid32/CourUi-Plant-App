


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/constants.dart';
import 'package:flutterapp/screens/home/componants/titleWithButtonMore.dart';
import 'package:flutterapp/screens/home/componants/titleWithCostomUnderLinse.dart';

import 'header_and_search.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return SingleChildScrollView(
      child: Column(

        children: [

          header_and_search(size: size) ,
          titleWithButtonMore(onPress: (){}, title:  'Recomended',) ,
          Container(
            margin: EdgeInsets.only(
              left:  kDefaultPadding ,
              top:  kDefaultPadding /2 ,
              bottom: kDefaultPadding * 2.5 ,
            ),
            width: size.width * 0.4,
            child:  Column(
              children: [
                Image.asset('assets/images/image_1.png') ,
                Container(
                  padding: EdgeInsets.all(kDefaultPadding /2 ),
                  decoration: BoxDecoration(
                    color: Colors.white ,
                    boxShadow:  [
                      BoxShadow(
                        blurRadius:  50 ,
                        color:kPrimaryColor.withOpacity(0.23) ,
                        offset: Offset(0,10)
                      )
                    ]
                  ),
                  child:  Row(
                    children: [
                      RichText(text: TextSpan(
                        children: [
                          TextSpan(text:  'hemidi ui \n' , style:  Theme.of(context).textTheme.button) ,
                          TextSpan(text:  'benameur' , style:  TextStyle(color: kPrimaryColor.withOpacity(0.2))) ,
                        ]
                      )) ,
                      Spacer( ) , 
                      Text('\$440' , style:  Theme.of(context).textTheme.button.copyWith(color: kPrimaryColor),) ,
                    ],
                  ),
                )

              ],
            ),
          )


        ],

      ),
    );
  }
}


