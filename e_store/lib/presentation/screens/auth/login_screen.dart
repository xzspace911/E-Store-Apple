import 'package:e_store/presentation/screens/auth/create_account.dart';
import 'package:e_store/presentation/screens/ui/home_screen.dart';
import 'package:e_store/presentation/widgets/connect_with.dart';
import 'package:e_store/presentation/widgets/divider.dart';
import 'package:e_store/presentation/widgets/elevated_button.dart';
import 'package:e_store/presentation/widgets/navigation_bar.dart';
import 'package:e_store/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100),
                  const Text(
                    'Welcome back !',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Sign in now to explore exclusive deals and enjoy a seamless shopping experience",
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 70),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text("Email"),
                      prefixIcon: const Icon(Iconsax.personalcard),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text("Password"),
                      prefixIcon: const Icon(Iconsax.password_check),
                      suffixIcon: const Icon(Iconsax.eye_slash),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(
                            fontSize: 13,
                            color: XColors.black,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 20),
                  XElevatedButton(
                    text: "Login",
                    textColor: XColors.white,
                    textSize: 16,
                    fontFamily: "Poppins",
                    onPressed: ()=> Get.to(()=>const HomeScreen()),
                    color: XColors.darkPrimaryColor,
                    borderColor: XColors.darkPrimaryColor,
                    width: double.infinity,
                    height: 60,
                    radius: 10,
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () => Get.to(() => const CreateAccount()),
                        child: RichText(
                          text: TextSpan(
                            text: "Don't have an account ? ",
                            style: TextStyle(
                              fontSize: 13,
                              color: XColors.black,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w300,
                            ),
                            children: [
                              TextSpan(
                                text: "Sign up",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: XColors.darkPrimaryColor,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ConnectWith()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
