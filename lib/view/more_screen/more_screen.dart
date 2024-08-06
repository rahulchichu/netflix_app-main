import 'package:flutter/material.dart';
import 'package:netflix_app/dummydb.dart';
import 'package:netflix_app/utils/constants/color_constants.dart';
import 'package:netflix_app/view/global_widgets/user_name_card.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserSelectionSection(),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: ColorConstants.mainWhite,
                ),
                SizedBox(
                  width: 9,
                ),
                Text(
                  "Manage profiles",
                  style: TextStyle(color: ColorConstants.mainWhite),
                ),
              ],
            ),
            SizedBox(
              height: 9,
            ),
            _buildReferralSection(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.check,
                  color: ColorConstants.mainWhite,
                  size: 30,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "My List",
                  style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Divider(
              color: ColorConstants.mainGrey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "App Settings",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Account",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Help",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Sign out",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _buildReferralSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      color: ColorConstants.mainGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.sms_outlined,
                color: ColorConstants.mainWhite,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                "Tell friends about Netflix.",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 10,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 11,
          ),
          Text(
            "Terms and Conditions",
            textAlign: TextAlign.justify,
            style: TextStyle(
                decorationThickness: 2,
                decoration: TextDecoration.underline,
                decorationColor: ColorConstants.mainWhite,
                color: ColorConstants.mainWhite,
                fontSize: 10,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 11,
          ),
          Row(
            children: [
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    fillColor: ColorConstants.mainBlack,
                    filled: true,
                    border: InputBorder.none),
              )),
              SizedBox(
                width: 7,
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: ColorConstants.mainWhite,
                child: Text(
                  "copy link",
                  style: TextStyle(
                      color: ColorConstants.mainBlack,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            height: 21,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 35,
                width: 47,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("asset/images/whatsapp_logo.png"))),
              ),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: ColorConstants.mainWhite,
                ),
              ),
              Container(
                height: 35,
                width: 47,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("asset/images/facebook_logo.png"))),
              ),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: ColorConstants.mainWhite,
                ),
              ),
              Container(
                height: 35,
                width: 47,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("asset/images/gmail_logo.png"))),
              ),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: ColorConstants.mainWhite,
                ),
              ),
              Column(
                children: [
                  Icon(
                    size: 35,
                    Icons.more_horiz,
                    color: ColorConstants.mainWhite,
                  ),
                  Text(
                    "More",
                    style: TextStyle(color: ColorConstants.mainWhite),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildUserSelectionSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: List.generate(
                Dummydb.userlist.length,
                (index) => UserNameCard(
                  onCardPressed: () {
                    selectedindex = index;
                    setState(() {});
                  },
                  height: index == selectedindex ? 70 : 60,
                  width: index == selectedindex ? 73 : 65,
                  imagepath: Dummydb.userlist[index]["imagepath"].toString(),
                  username: Dummydb.userlist[index]["name"].toString(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              height: 60,
              width: 63,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: ColorConstants.mainWhite)),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: ColorConstants.mainWhite,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
