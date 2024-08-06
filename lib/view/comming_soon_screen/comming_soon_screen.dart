import 'package:flutter/material.dart';
import 'package:netflix_app/dummydb.dart';

import 'package:netflix_app/utils/constants/color_constants.dart';
import 'package:netflix_app/view/comming_soon_screen/widget/custom_video_card.dart';
import 'package:netflix_app/view/comming_soon_screen/widget/new_arrival_card.dart';

class CommingSoonScreen extends StatelessWidget {
  const CommingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        titleSpacing: 0,
        leading: Center(
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 15,
            child: Icon(
              Icons.notifications,
              color: ColorConstants.mainWhite,
              size: 20,
            ),
          ),
        ),
        title: Text(
          "Notifications",
          style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 17,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: List.generate(
                Dummydb.movieposterimages1.length,
                (index) => NewArrivalCard(
                  imageurl: Dummydb.movieposterimages1[index],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              children: List.generate(
                Dummydb.movieposterimages1.length,
                (index) => CustomVideoCard(
                  imageurl: Dummydb.movieposterimages1[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
