import 'package:flutter/material.dart';
import 'package:netflix_app/utils/constants/color_constants.dart';
import 'package:netflix_app/view/comming_soon_screen/comming_soon_screen.dart';
import 'package:netflix_app/view/download_screen/download_screen.dart';
import 'package:netflix_app/view/home_screen/home_screen.dart';
import 'package:netflix_app/view/more_screen/more_screen.dart';
import 'package:netflix_app/view/search_screen/search_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int selectedindex = 0;
  List<Widget> myscreens = [
    HomeScreen(),
    SearchScreen(),
    CommingSoonScreen(),
    DownloadScreen(),
    MoreScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myscreens[selectedindex],
      backgroundColor: ColorConstants.mainBlack,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        backgroundColor: ColorConstants.mainBlack,
        selectedItemColor: ColorConstants.mainWhite,
        unselectedItemColor: ColorConstants.mainGrey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            label: "Coming Soon",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.download_sharp), label: "Downloads"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
        ],
        onTap: (value) {
          selectedindex = value;
          setState(() {});
        },
      ),
    );
  }
}
