import 'package:flutter/material.dart';
import 'package:netflix_app/utils/constants/color_constants.dart';

class MoviesCardBuilderWidget extends StatelessWidget {
  const MoviesCardBuilderWidget({
    super.key,
    this.isCircle = false,
    this.customHeight = 161,
    this.customWidth = 103,
    required this.title,
    required this.posterimages,
    this.haveinfocard = false,
  });
  final bool isCircle;
  final double customHeight;
  final double customWidth;
  final String title;
  final List<String> posterimages;
  final bool haveinfocard;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            title,
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
        SizedBox(
          height: 22,
        ),
        SizedBox(
          height: isCircle ? customWidth : customHeight,
          child: ListView.separated(
            itemCount: posterimages.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              height: customHeight,
              width: customWidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(posterimages[index]),
                    fit: BoxFit.cover),
                shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
                color: Colors.orange,
              ),
              child: Visibility(
                visible: haveinfocard,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 3,
                      color: ColorConstants.mainGrey,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      color: Color.fromARGB(255, 31, 31, 31),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: ColorConstants.mainWhite,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: ColorConstants.mainWhite,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            separatorBuilder: (context, index) => SizedBox(
              width: 10,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
