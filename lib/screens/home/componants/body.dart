


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return Column(

      children: [

        Container(
          height:  size.height * 0.2 ,
          //color: Colors.black,
          child: Stack(
            children: [
              Container(
                height:  size.height * 0.2 - 27 ,

                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft:Radius.circular(30) ,
                      bottomRight:Radius.circular(30) ,
                    )
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
        )


      ],

    );
  }
}
