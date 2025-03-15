import 'package:e_store/presentation/screens/ui/chat_screen.dart';
import 'package:e_store/presentation/screens/ui/home_screen.dart';
import 'package:e_store/presentation/screens/ui/profile_screen.dart';
import 'package:e_store/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class XBottomNavigationBar extends StatelessWidget {
  const XBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.fromLTRB(15,0,15,0),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: XColors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                blurRadius: 50,
                offset: Offset(0, 5),
                spreadRadius: 8,
                color: Colors.grey.withAlpha(100),
              )
            ]
          ),
          child: SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: ()=>Get.to(()=> const HomeScreen()),
                  icon: Icon(Iconsax.home),
                  iconSize: 30,
                  color: Colors.blue[900],
                ),
                IconButton(
                  onPressed: ()=> Get.to(()=>ChatScreen()),
                  icon: Icon(Iconsax.message),
                  iconSize: 30,
                  color: Colors.blue[900],
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Iconsax.shopping_cart),
                  iconSize: 30,
                  color: Colors.blue[900],
                ),
                IconButton(
                  onPressed: ()=>Get.to(()=> const ProfileScreen()),
                  icon: Icon(Iconsax.user),
                  iconSize: 30,
                  color: Colors.blue[900],
                ),
              ],
            ),
          ),
        ),
      );
  }
}