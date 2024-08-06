import 'package:flutter/material.dart';

import 'package:netflix_app/utils/constants/color_constants.dart';

class CustomVideoCard extends StatelessWidget {
  const CustomVideoCard({
    super.key,
    required this.imageurl,
  });
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          imageurl,
          height: 195,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: ColorConstants.mainWhite,
                        size: 24,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Remind Me",
                        style: TextStyle(
                            color: ColorConstants.mainWhite.withOpacity(.83)),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: ColorConstants.mainWhite,
                        size: 24,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Share",
                        style: TextStyle(
                            color: ColorConstants.mainWhite.withOpacity(.83)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                "Season 1 Coming December 14",
                style:
                    TextStyle(color: ColorConstants.mainWhite.withOpacity(.83)),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "The Queen's Gambit",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.w900,
                    fontSize: 22),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.",
                style: TextStyle(
                    color: ColorConstants.mainWhite.withOpacity(.83),
                    fontSize: 11),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                " Steamy . Soapy . Slow Burn . Suspenseful . Teen . Mystery",
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 11),
              ),
            ],
          ),
        )
      ],
    );
  }
}
