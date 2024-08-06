import 'package:flutter/material.dart';
import 'package:netflix_app/dummydb.dart';

import 'package:netflix_app/utils/constants/color_constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    filled: true,
                    fillColor: ColorConstants.mainGrey,
                    prefixIcon: Icon(
                      Icons.search,
                      color: ColorConstants.mainlightGrey,
                    ),
                    hintText: "search for a show,movie,genre,etc..",
                    hintStyle: TextStyle(
                        color: ColorConstants.mainlightGrey, fontSize: 16),
                    suffixIcon: Icon(
                      Icons.mic,
                      color: ColorConstants.mainlightGrey,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Top Searches",
                  style:
                      TextStyle(color: ColorConstants.mainWhite, fontSize: 27),
                ),
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                        color: ColorConstants.mainGrey,
                        child: Row(
                          children: [
                            Container(
                              height: 120,
                              width: 146,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          Dummydb.topsearch_searchscreen[index]
                                              ["imagepath"]!))),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              Dummydb.topsearch_searchscreen[index]["name"]
                                  .toString(),
                              style: TextStyle(color: ColorConstants.mainWhite),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.play_circle_outline,
                                color: ColorConstants.mainWhite,
                              ),
                            )
                          ],
                        ),
                      ),
                  separatorBuilder: (context, index) => Container(
                        height: 5,
                      ),
                  itemCount: Dummydb.topsearch_searchscreen.length),
            ],
          ),
        ),
      ),
    );
  }
}
