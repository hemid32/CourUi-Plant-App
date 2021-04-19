


import 'package:flutter/material.dart';

import 'header_and_search.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return SingleChildScrollView(
      child: Column(

        children: [

          header_and_search(size: size)


        ],

      ),
    );
  }
}

