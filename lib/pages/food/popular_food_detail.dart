import 'package:flutter/material.dart';
import 'package:vogg/utils/dimension.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimension.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/food1.png"),
                ),
              ),
            ),
          ),
          Positioned(
              left: Dimension.width20,
              right: Dimension.width20,
              child: Row(
                children: [],
              ))
        ],
      ),
    );
  }
}
