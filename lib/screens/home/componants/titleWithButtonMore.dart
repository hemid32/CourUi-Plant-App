import 'package:flutter/material.dart';
import 'package:flutterapp/constants.dart';
import 'package:flutterapp/screens/home/componants/titleWithCostomUnderLinse.dart';

class TitleWithButtonMore extends StatelessWidget {
  const TitleWithButtonMore({
    Key key,
    this.title ,
    this.onPress  ,
  }) : super(key: key);
  final String title ;
  final Function onPress ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          titleWithCostomUnderLine(title: '$title',),
          Spacer() ,
          FlatButton(
              color: kPrimaryColor,

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              )  ,
              onPressed: onPress , child: Text('More'))

        ],
      ),
    );
  }
}

