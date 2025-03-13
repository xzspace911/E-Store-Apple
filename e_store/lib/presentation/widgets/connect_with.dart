import 'package:e_store/presentation/widgets/divider.dart';
import 'package:e_store/utils/colors.dart';
import 'package:flutter/material.dart';

class ConnectWith extends StatelessWidget {
  const ConnectWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: XDivider(
              color: Colors.black,
              thickness: 0.5,
              indent: 30,
              endIndent: 10,
            ),
          ),
          Text(
            "Or connect with",
            style: TextStyle(
              fontSize: 13,
              color: XColors.black,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w300,
            ),
          ),
          Flexible(
            child: XDivider(
              color: Colors.black,
              thickness: 0.5,
              indent: 10,
              endIndent: 30,
            ),
          ),
        ],
      ),
      SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/icons/facebook.png",
              width: 30,
              height: 30,
            ),
          ),
          SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/icons/google.png",
              width: 30,
              height: 30,
            ),
          ),
          SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/icons/github.png",
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
    ]);
  }
}
