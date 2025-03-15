import 'package:e_store/presentation/screens/auth/login_screen.dart';
import 'package:e_store/presentation/widgets/connect_with.dart';
import 'package:e_store/presentation/widgets/elevated_button.dart';
import 'package:e_store/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                const Text(
                  'Create an account',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Sign up now to explore exclusive deals and enjoy a seamless shopping experience",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          label: Text("First Name"),
                          prefixIcon: const Icon(Iconsax.user),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          label: Text("Last Name"),
                          prefixIcon: const Icon(Iconsax.user),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
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
                const SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text("Confirm Password"),
                    prefixIcon: const Icon(Iconsax.password_check),
                    suffixIcon: const Icon(Iconsax.eye_slash),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text("Phone Number"),
                    prefixIcon: const Icon(Iconsax.call),
                  ),
                ),
                const SizedBox(height: 24),
                XElevatedButton(
                  text: "Sign Up",
                  textColor: XColors.white,
                  textSize: 16,
                  fontFamily: "Poppins",
                  onPressed: ()=> Get.to(() => const LoginScreen()),
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
                      onPressed: ()=> Get.to(() => const LoginScreen()),
                      child: RichText(
                        text: TextSpan(
                          text: "Have an account ? ",
                          style: TextStyle(
                            fontSize: 13,
                            color: XColors.black,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                          ),
                          children: [
                            TextSpan(
                              text: "Login",
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
                ConnectWith(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
