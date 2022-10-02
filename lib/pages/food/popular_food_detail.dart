import 'package:flutter/material.dart';
import 'package:vogg/utils/dimension.dart';
import 'package:vogg/widgets/app_icon.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

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
            top: Dimension.height45,
            left: Dimension.width20,
            right: Dimension.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_checkout_outlined),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimension.popularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimension.width20,
                  right: Dimension.width20,
                  top: Dimension.height10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimension.radius20),
                  topRight: Radius.circular(Dimension.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Desi Side"),
                  SizedBox(
                    height: Dimension.height10,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            color: AppColors.mainColor,
                            size: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Dimension.width10,
                      ),
                      SmallText(text: '4.5'),
                      SizedBox(
                        width: Dimension.width10,
                      ),
                      SmallText(text: '1536'),
                      SizedBox(
                        width: Dimension.width10,
                      ),
                      SmallText(text: 'comments'),
                    ],
                  ),
                  SizedBox(
                    height: Dimension.height20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconAndTextWidget(
                          text: 'Normal',
                          icon: Icons.circle_sharp,
                          iconColor: AppColors.iconColor1),
                      IconAndTextWidget(
                          text: '1.7Km',
                          icon: Icons.location_on,
                          iconColor: AppColors.mainColor),
                      IconAndTextWidget(
                          text: '32',
                          icon: Icons.access_time_rounded,
                          iconColor: AppColors.iconColor2),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
