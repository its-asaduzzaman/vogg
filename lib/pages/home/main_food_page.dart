import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vogg/pages/home/food_page_body.dart';
import 'package:vogg/utils/colors.dart';
import 'package:vogg/utils/dimension.dart';
import 'package:vogg/widgets/big_text.dart';
import 'package:vogg/widgets/small_text.dart';

import '../food/popular_food_detail.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimension.height45, bottom: Dimension.height15),
              padding: EdgeInsets.only(
                  left: Dimension.radius20, right: Dimension.radius20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: "Bangladesh",
                        color: AppColors.mainColor,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: 'Dhaka',
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: Dimension.height60,
                    width: Dimension.width60,
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(Dimension.radius20),
                    ),
                    child: Icon(
                      Icons.search_rounded,
                      color: AppColors.buttonBackgroundColor,
                      size: Dimension.iconSize24,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: FoodPageBody(),
            ),
          ),
        ],
      ),
    );
  }
}
