import 'package:e_store/presentation/widgets/bottom_navigation_bar.dart';
import 'package:e_store/utils/colors.dart';
import 'package:e_store/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: XColors.white,
      appBar: AppBar(
        backgroundColor: XColors.white,
        automaticallyImplyLeading: false,
        title: Text(
          "Cart",
          style: TextStyle(
            fontFamily: XStrings.mainFontFamily,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Iconsax.arrow_left_3,
            size: 35,
          ),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 200),
            SizedBox(
                height: 300,
                width: 300,
                child: Image.asset("assets/images/cart.gif")),
            SizedBox(height: 8),
            Text(
              "Your cart is empty",
              style: TextStyle(
                  fontFamily: XStrings.mainFontFamily,
                  fontSize: 24,
                  color: XColors.darkPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text("Please enter some products",
            style: TextStyle(
              fontFamily: XStrings.mainFontFamily,
              fontSize: 12,
              color: XColors.grey
            ),
            ),
          ],
        ),
      ),
      floatingActionButton: XBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
