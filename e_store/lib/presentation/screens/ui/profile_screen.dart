import 'package:e_store/presentation/screens/ui/on_boarding_screen.dart';
import 'package:e_store/presentation/widgets/bottom_navigation_bar.dart';
import 'package:e_store/presentation/widgets/elevated_button.dart';
import 'package:e_store/utils/colors.dart';
import 'package:e_store/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: XColors.white,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: XColors.backgroundColor,
                      minRadius: 40,
                      child: Icon(
                        Iconsax.user,
                        size: 30,
                        color: XColors.black,
                      ),
                    ),
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Username",
                          style: TextStyle(
                            fontFamily: XStrings.mainFontFamily,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "username@gmail.com",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: XStrings.mainFontFamily,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50),
                _pages("Your Account", Iconsax.user, () {}),
                SizedBox(height: 20),
                _pages("Settings", Iconsax.setting, () {}),
                SizedBox(height: 20),
                _pages("Notifications", Iconsax.notification, () {}),
                SizedBox(height: 20),
                _pages("FAQ", Iconsax.messages, () {}),
                SizedBox(height: 20),
                _pages("About App", Iconsax.warning_2, () {}),
                SizedBox(height: 100),
                XElevatedButton(
                  text: "Log out",
                  textColor: XColors.white,
                  textSize: 16,
                  fontFamily: XStrings.mainFontFamily,
                  onPressed: () {
                    openDialog(context);
                  },
                  color: XColors.black,
                  borderColor: XColors.black,
                  width: double.infinity,
                  height: 60,
                  radius: 12,
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: XBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

Widget _pages(String name, IconData xicon, Function() onPressed) {
  return SizedBox(
    width: double.infinity,
    height: 50,
    child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: XColors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(xicon, color: XColors.black),
            SizedBox(width: 20),
            Text(
              name,
              style: TextStyle(
                  fontFamily: XStrings.mainFontFamily, color: XColors.black),
            ),
          ],
        )),
  );
}

Future openDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Text(
          "Are you sure you want to log out ?",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: XStrings.mainFontFamily,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 120,
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(XColors.darkPrimaryColor),
                      shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)))),
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      fontFamily: XStrings.mainFontFamily,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              SizedBox(
                height: 50,
                width: 120,
                child: ElevatedButton(
                  onPressed: ()=> Get.to(()=> const OnBoardingScreen()),
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white),
                      side: WidgetStateProperty.all(
                          BorderSide(color: Colors.red)),
                      shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)))),
                  child: Text(
                    "Log Out",
                    style: TextStyle(
                      fontFamily: XStrings.mainFontFamily,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
