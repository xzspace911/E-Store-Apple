import 'package:e_store/presentation/screens/auth/create_account.dart';
import 'package:e_store/presentation/screens/auth/login_screen.dart';
import 'package:e_store/presentation/widgets/connect_with.dart';
import 'package:e_store/presentation/widgets/elevated_button.dart';
import 'package:e_store/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Import the CreateAccountScreen class

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 180),
              Image.asset(
                "assets/images/store.png",
                height: 300,
                width: 300,
              ),
              SizedBox(height: 12),
              Text("Welcome to E-Store",
                  style: TextStyle(
                    fontSize: 24,
                    color: const Color.fromARGB(255, 75, 75, 75),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  )),
              SizedBox(height: 4),
              Text(
                "Discover and shop your favorite products with ease and convenience!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: XColors.grey,
                  fontFamily: "Poppins",
                ),
              ),
              SizedBox(height: 40),
              XElevatedButton(
                text: "Login",
                textColor: XColors.white,
                textSize: 17,
                fontFamily: "Poppins",
                onPressed: () => Get.to(() => const LoginScreen()),
                color: XColors.darkPrimaryColor,
                borderColor: XColors.darkPrimaryColor,
                width: double.infinity,
                height: 60,
                radius: 8,
              ),
              SizedBox(height: 12),
              XElevatedButton(
                text: "Create Account",
                textColor: XColors.darkPrimaryColor,
                textSize: 17,
                fontFamily: "Poppins",
                onPressed: () => Get.to(() => const CreateAccount()),
                color: XColors.white,
                borderColor: XColors.white,
                width: double.infinity,
                height: 60,
                radius: 8,
              ),
              SizedBox(height: 20),
              ConnectWith()
            ],
          ),
        ),
      ),
    );
  }
}
