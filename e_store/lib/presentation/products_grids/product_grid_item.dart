import 'package:e_store/presentation/products_grids/product_card_details.dart';
import 'package:e_store/presentation/products_grids/products_details.dart';
import 'package:e_store/utils/colors.dart';
import 'package:e_store/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductGridItem extends StatelessWidget {
  ProductGridItem({super.key});
  final List<Map<String, dynamic>> product = ProductsDetails().product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Best Selling",
          style: TextStyle(
            fontFamily: XStrings.mainFontFamily,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Iconsax.arrow_left_2)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 12,
            childAspectRatio: 0.8,
            padding: EdgeInsets.all(8),
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
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  child: SizedBox(
                    height: 250,
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            height: 120,
                            width: 120,
                            product["image"],
                          ),
                        ),
                        Text(
                          product["name"],
                          style: TextStyle(
                            fontFamily: XStrings.mainFontFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Price :",
                                style: TextStyle(
                                  fontFamily: XStrings.mainFontFamily,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                product["price"],
                                style: TextStyle(
                                  fontFamily: XStrings.mainFontFamily,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: XColors.darkPrimaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList()),
      ),
    );
  }
}
