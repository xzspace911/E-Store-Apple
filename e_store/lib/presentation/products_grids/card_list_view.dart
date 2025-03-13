import "package:e_store/presentation/products_grids/product_card_details.dart";
import "package:e_store/presentation/products_grids/products_details.dart";
import "package:e_store/utils/colors.dart";
import "package:e_store/utils/strings.dart";
import "package:flutter/material.dart";

class CardListView extends StatelessWidget {
  CardListView({super.key});
  final List<Map<String, dynamic>> product = ProductsDetails().product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: product.map((product) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductCardDetails(
                    productName: product["name"],
                    productDetails: product["details"],
                    productImage: product["image"],
                    productPrice: product["price"],
                  ),
                ),
              );
            },
            child: Container(
              width: 200,
              height: 260,
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: XColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Apple",
                      style: TextStyle(
                        fontFamily: XStrings.mainFontFamily,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: SizedBox(
                        height: 120,
                        width: 120,
                        child: Image.asset(product["image"]),
                      ),
                    ),
                    // SizedBox(height: 8),
                    Text(
                      product["name"],
                      style: TextStyle(
                        fontFamily: XStrings.mainFontFamily,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      product["subtitle"],
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontFamily: XStrings.mainFontFamily,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Price",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: XStrings.mainFontFamily,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      product["price"],
                      style: TextStyle(
                        color: XColors.darkPrimaryColor,
                        fontSize: 14,
                        fontFamily: XStrings.mainFontFamily,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
