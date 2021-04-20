

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterapp/constants.dart';
import 'package:flutterapp/screens/home/componants/body.dart';
import 'package:flutterapp/screens/home/componants/buttonbarnavigator.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottonBarNavigatorCostom(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon:  SvgPicture.asset("assets/icons/menu.svg") ,
        onPressed: (){

        },

      ),
    );
  }
}

