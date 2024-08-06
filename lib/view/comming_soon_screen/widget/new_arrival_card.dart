import 'package:flutter/material.dart';

import 'package:netflix_app/utils/constants/color_constants.dart';

class NewArrivalCard extends StatelessWidget {
  const NewArrivalCard({
    super.key,
    required this.imageurl,
  });
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      color: ColorConstants.mainGrey,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: Image.network(
              imageurl,
              fit: BoxFit.cover,
              height: 55,
              width: 113,
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Arrival",
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 14),
              ),
              Text(
                "El Chappo",
                style: TextStyle(
                    color: ColorConstants.mainWhite.withOpacity(.83),
                    fontSize: 14),
              ),
              Text(
                "Nov 6",
                style: TextStyle(
                    color: ColorConstants.mainWhite.withOpacity(.47),
                    fontSize: 10),
              )
            ],
          )
        ],
      ),
    );
  }
}
