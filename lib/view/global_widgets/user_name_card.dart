import 'package:flutter/material.dart';
import 'package:netflix_app/utils/constants/color_constants.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard(
      {super.key,
      required this.imagepath,
      required this.username,
      this.onCardPressed,
      this.height,
      this.width});
  final String imagepath;
  final String username;
  final void Function()? onCardPressed;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            height: height,
            width: width,
            imagepath,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            username,
            style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 13.25,
            ),
          )
        ],
      ),
    );
  }
}
