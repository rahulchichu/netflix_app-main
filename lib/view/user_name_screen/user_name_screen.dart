import 'package:flutter/material.dart';
import 'package:netflix_app/dummydb.dart';
import 'package:netflix_app/utils/constants/color_constants.dart';
import 'package:netflix_app/utils/constants/image_constants.dart';
import 'package:netflix_app/view/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';
import 'package:netflix_app/view/global_widgets/user_name_card.dart';

class UserNameScreen extends StatefulWidget {
  const UserNameScreen({super.key});

  @override
  State<UserNameScreen> createState() => _UserNameScreenState();
}

class _UserNameScreenState extends State<UserNameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        centerTitle: true,
        title: Image.asset(height: 37.2, ImageConstants.LOGO_PNG),
        actions: [
          Icon(
            Icons.edit,
            color: ColorConstants.mainWhite,
          )
        ],
      ),
      body: GridView.builder(
        // shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 75, vertical: 178),
        itemCount: Dummydb.userlist.length + 1,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 130, crossAxisSpacing: 10, crossAxisCount: 2),
        itemBuilder: (context, index) {
          if (index < Dummydb.userlist.length) {
            return UserNameCard(
              imagepath: Dummydb.userlist[index]["imagepath"].toString(),
              username: Dummydb.userlist[index]["name"].toString(),
              onCardPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavBarScreen(),
                    ));
              },
            );
          } else {
            return InkWell(
              onTap: () {
                Dummydb.userlist
                    .add({"imagepath": ImageConstants.USER_4, "name": "Kid"});
                setState(() {});
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_circle,
                    color: ColorConstants.mainWhite,
                    size: 50,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Add profile",
                    style: TextStyle(color: ColorConstants.mainWhite),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
