import 'package:flutter/material.dart';
import 'package:vogg/utils/colors.dart';
import 'package:vogg/widgets/app_icon.dart';

import '../../utils/dimension.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: Dimension.height20 * 3,
            left: Dimension.width20,
            right: Dimension.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimension.iconSize24,
                ),
                SizedBox(
                  width: Dimension.width20 * 5,
                ),
                AppIcon(
                  icon: Icons.home_outlined,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimension.iconSize24,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimension.iconSize24,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
