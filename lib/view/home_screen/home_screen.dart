import 'package:flutter/material.dart';
import 'package:netflix_app/dummydb.dart';
import 'package:netflix_app/utils/constants/color_constants.dart';
import 'package:netflix_app/utils/constants/image_constants.dart';

import 'package:netflix_app/view/home_screen/widget/movies_card_builder_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _moviePosterSection(),
            SizedBox(
              height: 11,
            ),
            _buildPlaySection(),
            SizedBox(
              height: 43,
            ),
            MoviesCardBuilderWidget(
                isCircle: true,
                customWidth: 102,
                title: "Preview",
                posterimages: Dummydb.movieposterimages1),
            MoviesCardBuilderWidget(
              title: "Continue watching for Emenalo",
              posterimages: Dummydb.movieposterimages2,
              haveinfocard: true,
            ),
            MoviesCardBuilderWidget(
                title: "Popular on Netflix",
                posterimages: Dummydb.movieposterimages3),
            MoviesCardBuilderWidget(
              posterimages: Dummydb.movieposterimages4,
              customHeight: 251,
              customWidth: 154,
              title: "Trending Now",
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPlaySection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(
              Icons.add,
              color: ColorConstants.mainWhite,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "My List",
              style: TextStyle(color: ColorConstants.mainWhite, fontSize: 14),
            )
          ],
        ),
        SizedBox(
          width: 42,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(6)),
          child: Row(
            children: [
              Icon(
                Icons.play_arrow,
                size: 40,
                color: ColorConstants.mainBlack,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Play",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              )
            ],
          ),
        ),
        SizedBox(
          width: 42,
        ),
        Column(
          children: [
            Icon(
              Icons.info_outline,
              color: ColorConstants.mainWhite,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Info",
              style: TextStyle(color: ColorConstants.mainWhite, fontSize: 14),
            )
          ],
        )
      ],
    );
  }

  Widget _moviePosterSection() {
    return Stack(
      children: [
        Container(
          height: 415,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.c3VjSn9aWHYI-JidQavqcgHaK-?rs=1&pid=ImgDetMain"))),
          child: Container(
            height: 415,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [ColorConstants.mainBlack, Colors.transparent])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(ImageConstants.LOGO_ICON_PNG),
                      Text(
                        "TV Shows",
                        style: TextStyle(
                            color: ColorConstants.mainWhite, fontSize: 18),
                      ),
                      Text(
                        "Movies",
                        style: TextStyle(
                            color: ColorConstants.mainWhite, fontSize: 18),
                      ),
                      Text(
                        "My List",
                        style: TextStyle(
                            color: ColorConstants.mainWhite, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("asset/images/top10.png"),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "#2 in Nigeria Today",
                      style: TextStyle(
                          fontSize: 14, color: ColorConstants.mainWhite),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
