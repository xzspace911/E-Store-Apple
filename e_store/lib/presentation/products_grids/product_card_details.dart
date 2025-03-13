import 'package:e_store/presentation/widgets/bottom_navigation_bar.dart';
import 'package:e_store/presentation/widgets/elevated_button.dart';
import 'package:e_store/utils/colors.dart';
import 'package:e_store/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardDetails extends StatefulWidget {
  final String productName;
  final String productDetails;
  final String productImage;
  final String productPrice;

  const ProductCardDetails({
    super.key,
    required this.productName,
    required this.productDetails,
    required this.productImage,
    required this.productPrice,
  });

  @override
  State<ProductCardDetails> createState() => _ProductCardDetailsState();
}
bool favorite =false;
bool twoFavorite =false;
Color iconColor = Colors.grey;

class _ProductCardDetailsState extends State<ProductCardDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 362,
            width: double.infinity,
            decoration: BoxDecoration(
              color: XColors.backgroundColor,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: Icon(
                            Iconsax.arrow_left_2,
                            color: Colors.black,
                          )),
                      SizedBox(width: 90),
                      Text(
                        "Details",
                        style: TextStyle(
                          fontFamily: XStrings.mainFontFamily,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 100),
                      InkWell(
                        onTap: (){
                          setState(() {
                            favorite? iconColor = Colors.grey: iconColor = Colors.red;
                            twoFavorite =false;
                          });
                        },
                        onDoubleTap: (){
                          setState(() {
                            twoFavorite? iconColor = Colors.red: iconColor = Colors.grey;
                            favorite = false;
                          });
                        },
                        
                        child: Icon(Icons.favorite,
                        color: iconColor,
                        ),
                      ),
                    ],
                  ),
                  Hero(
                    tag: 15,
                    child: Image.asset(
                      widget.productImage,
                      height: 250,
                      width: 250,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.productName,
                      style: TextStyle(
                        fontFamily: XStrings.mainFontFamily,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.productPrice,
                      style: TextStyle(
                          fontFamily: XStrings.mainFontFamily,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  widget.productDetails,
                  style: TextStyle(fontFamily: XStrings.mainFontFamily),
                ),
                SizedBox(height: 20),
                Text(
                  "Color Available",
                  style: TextStyle(
                      fontFamily: XStrings.mainFontFamily,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                Container(
                  width: 110,
                  height: 42,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 244, 244, 244),
                    border: Border.all(color: Colors.black.withAlpha(60)),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      "Alpine Black",
                      style: TextStyle(fontFamily: XStrings.mainFontFamily),
                    ),
                  ),
                ),
                SizedBox(height: 80),
                XElevatedButton(
                    text: "Buy Now",
                    textColor: XColors.white,
                    textSize: 18,
                    fontFamily: XStrings.mainFontFamily,
                    onPressed: () {},
                    color: XColors.darkPrimaryColor,
                    borderColor: XColors.darkPrimaryColor,
                    width: double.infinity,
                    height: 60,
                    radius: 12)
              ],
            ),
          )
        ],
      ),
      floatingActionButton: XBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
