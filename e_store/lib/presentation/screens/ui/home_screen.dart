import 'package:e_store/presentation/products_grids/card_list_view.dart';
import 'package:e_store/presentation/products_grids/category_list_view.dart';
import 'package:e_store/presentation/products_grids/product_grid_item.dart';
import 'package:e_store/presentation/screens/ui/profile_screen.dart';
import 'package:e_store/presentation/widgets/bottom_navigation_bar.dart';
import 'package:e_store/utils/colors.dart';
import 'package:e_store/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: XColors.backgroundColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Explore the best product",
                            style: TextStyle(
                              fontFamily: XStrings.mainFontFamily,
                              color: XColors.grey,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "For You!",
                            style: TextStyle(
                              fontFamily: XStrings.mainFontFamily,
                              color: XColors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 135),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: InkWell(
                          onTap: () => Get.to(() => const ProfileScreen()),
                          child: CircleAvatar(
                            child: Image.asset("assets/images/man.png"),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 25),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: XColors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "   Search",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: XStrings.mainFontFamily),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(0),
                        child: CircleAvatar(
                          backgroundColor: XColors.darkPrimaryColor,
                          child: Icon(
                            Iconsax.search_normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Best Selling",
                        style: TextStyle(
                          fontFamily: XStrings.mainFontFamily,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 180),
                      IconButton(
                        onPressed: () => Get.to(() => ProductGridItem()),
                        icon: Icon(Iconsax.element_3),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  CardListView(),
                  SizedBox(height: 15),
                  CategoryListView(),
                  SizedBox(height: 18),
                  Text(
                    "Deals for you!",
                    style: TextStyle(
                      fontFamily: XStrings.mainFontFamily,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      color: XColors.primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment(-0.3, 1),
                          child: Image.asset("assets/images/iphone.png"),
                        ),
                        Align(
                          alignment: Alignment(0.4, 1),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/images/airpods.png"),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0.9, -0.8),
                          child: SizedBox(
                            height: 70,
                            width: 70,
                            child: Image.asset("assets/images/offer.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 120),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: XBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
