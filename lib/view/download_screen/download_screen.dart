import 'package:flutter/material.dart';
import 'package:netflix_app/utils/constants/color_constants.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: Text(
                  "smart downloads",
                  style:
                      TextStyle(fontSize: 14, color: ColorConstants.mainWhite),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "Introducing Downloads For You",
                style: TextStyle(
                    fontSize: 20,
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.",
                style: TextStyle(
                  fontSize: 10,
                  color: ColorConstants.mainWhite,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: CircleAvatar(
                  radius: 88,
                  backgroundColor: ColorConstants.mainGrey,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))),
                    minimumSize: WidgetStatePropertyAll(Size(353, 40)),
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  ),
                  onPressed: () {},
                  child: Text(
                    "SETUP",
                    style: TextStyle(
                      fontSize: 13,
                      color: ColorConstants.mainWhite,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  height: 33,
                  width: 239,
                  decoration: BoxDecoration(
                      color: ColorConstants.mainGrey,
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(
                    child: Text(
                      "Find Something to Download",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
