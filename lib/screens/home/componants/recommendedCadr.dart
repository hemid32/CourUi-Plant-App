import 'package:flutter/material.dart';
import 'package:flutterapp/constants.dart';
import 'package:flutterapp/screens/detail/detail_screen.dart';

class RecommendedCadrSingleScroll extends StatelessWidget {
  const RecommendedCadrSingleScroll({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlantCard(size: size ,

            title:  'hemidi' ,
            supTitle:  'benameur'  ,
            price:  44 ,
            image:  'assets/images/image_1.png'

            ,
            onPress:  (){Navigator.push(context, MaterialPageRoute(builder: (context) => Detail()));},

          ),
          RecommendedPlantCard(size: size ,

            title:  'benameur' ,
            supTitle:  'benameur'  ,
            price:  500 ,
            image:  'assets/images/image_2.png'
            ,
            onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Detail())); },


          ),
          RecommendedPlantCard(size: size ,

            title:  'hemidi' ,
            supTitle:  'benameur'  ,
            price:  200 ,
            image:  'assets/images/image_3.png'
            ,
            onPress: (){print('onpress3'); },

          ),
          RecommendedPlantCard(size: size ,

            title:  'maryam' ,
            supTitle:  'bekdad'  ,
            price:  10 ,
            image:  'assets/images/image_1.png'
            ,
            onPress: (){print('onpress4'); },

          ),
          RecommendedPlantCard(size: size ,

            title:  'hemidi' ,
            supTitle:  'benameur'  ,
            price:  44 ,
            image:  'assets/images/image_1.png'
            ,
            onPress: (){print('onpress5'); },

          ),
        ],
      ),
    );
  }
}

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({
    Key key,
    this.image ,
    this.title ,
    this.supTitle ,
    this.price  ,
    this.onPress ,
    @required this.size,
  }) : super(key: key);
  final String image ;
  final String title ;
  final String supTitle ;
  final int price ;
  final Function onPress  ;


  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(
          left:  kDefaultPadding ,
          top:  kDefaultPadding /2 ,
          bottom: kDefaultPadding * 2.5 ,
        ),
        width: size.width * 0.4,
        child:  Column(
          children: [
            Image.asset(image) ,
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
                  ] ,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10) ,
                    bottomRight: Radius.circular(10) ,
                  )
              ),
              child:  Row(
                children: [
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(text:  '$title \n'.toUpperCase() , style:  Theme.of(context).textTheme.button) ,
                        TextSpan(text:  '$supTitle' , style:  TextStyle(color: kPrimaryColor.withOpacity(0.2))) ,
                      ]
                  )) ,
                  Spacer( ) ,
                  Text('\$$price' , style:  Theme.of(context).textTheme.button.copyWith(color: kPrimaryColor),) ,
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}


