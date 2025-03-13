import 'package:e_store/presentation/products_grids/category_details.dart';
import 'package:e_store/utils/colors.dart';
import 'package:e_store/utils/strings.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});
  final List<Map<String, dynamic>> category = CategoryDetails().category;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: category.map((category) {
          return InkWell(
            // onTap: () {
            //   Navigator.of(context).push(
            //     MaterialPageRoute(
            //       builder: (context) => ProductCardDetails(
            //           productName: product["name"],
            //           productDetails: product["details"],
            //           productImage: product["image"]),
            //     ),
            //   );
            // },
            child: Container(
              margin: EdgeInsets.all(4),
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: XColors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset(
                      category["image"],
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    category["name"],
                    style: TextStyle(
                      fontFamily: XStrings.mainFontFamily,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
