import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterapp/constants.dart';

class header_and_search extends StatelessWidget {
  const header_and_search({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding),
      height:  size.height * 0.2 ,
      //color: Colors.black,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding ,
              right:   kDefaultPadding ,
              bottom:  36 +  kDefaultPadding ,

            ),
            height:  size.height * 0.2 - 27 ,

            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft:Radius.circular(36) ,
                  bottomRight:Radius.circular(36) ,
                )
            ),

            child: Row(
              children: [

                Text(
                  'hemidi ui'
                  ,
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white ,
                      fontWeight: FontWeight.bold


                  ),



                ) ,
                Spacer() ,
                Image.asset('assets/images/logo.png')

              ],
            ),
          ) ,

          Positioned(
              bottom: 0,
              left: 0,
              right: 0,


              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: BoxDecoration(

                    color: Colors.white ,
                    borderRadius: BorderRadius.circular(20) ,
                    boxShadow: [
                      BoxShadow(
                          color: kPrimaryColor.withOpacity(0.3) ,
                          offset: Offset(0 , 10 ) ,
                          blurRadius: 50
                      )
                    ]

                ),

                child: Row(
                  children: [
                    Expanded(
                      child: TextField
                        (

                        decoration: InputDecoration(
                            hintText: 'Search' ,
                            enabledBorder: InputBorder.none ,
                            focusedBorder: InputBorder.none ,
                            hintStyle: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5)
                            )
                        ),


                        //enabled: false ,
                        //focusNode: InputBorder.none,

                      ),
                    ),
                    SvgPicture.asset('assets/icons/search.svg')

                  ],
                ),

              ))
        ],
      ),
    );
  }
}
