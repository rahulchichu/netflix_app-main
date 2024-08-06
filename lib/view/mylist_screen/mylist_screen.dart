import 'package:flutter/material.dart';
import 'package:netflix_app/dummydb.dart';

import 'package:netflix_app/utils/constants/color_constants.dart';

class MylistScreen extends StatelessWidget {
  const MylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: GridView.builder(
        itemCount: Dummydb.mylistposters.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10),
        itemBuilder: (context, index) => Container(
          height: 161,
          width: 110,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(Dummydb.mylistposters[index]))),
        ),
      ),
    );
  }
}
