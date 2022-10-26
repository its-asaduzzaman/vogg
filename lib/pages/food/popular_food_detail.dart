import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vogg/controllers/popular_product_controller.dart';
import 'package:vogg/pages/home/main_food_page.dart';
import 'package:vogg/utils/app_constants.dart';
import 'package:vogg/utils/dimension.dart';
import 'package:vogg/widgets/app_icon.dart';
import 'package:vogg/widgets/expandable_text_widget.dart';

import '../../routs/rout_helper.dart';
import '../../utils/colors.dart';
import '../../widgets/app_column.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  int pageId;
  PopularFoodDetail({Key? key, required this.pageId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<PopularProductController>().popularProductList[pageId];
    // print("page id is " + pageId.toString());
    // print("product name is " + product.name.toString());
    return Scaffold(
      backgroundColor: Colors.white,
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
                  image: NetworkImage(AppConstants.BASE_URL +
                      AppConstants.UPLOAD_URL +
                      product.img!),
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
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RoutHelper.getInitial());
                  },
                  child: const AppIcon(icon: Icons.arrow_back_ios),
                ),
                const AppIcon(icon: Icons.shopping_cart_checkout_outlined),
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
                  AppColumn(
                    text: product.name!,
                  ),
                  SizedBox(
                    height: Dimension.height20,
                  ),
                  BigText(text: "Introduce"),
                  SizedBox(
                    height: Dimension.height30,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(text: product.description),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimension.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimension.height30,
            bottom: Dimension.height30,
            left: Dimension.width20,
            right: Dimension.width20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimension.radius20 * 2),
            topRight: Radius.circular(Dimension.radius20 * 2),
          ),
          color: AppColors.buttonBackgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(Dimension.height20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimension.radius20),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimension.width5,
                  ),
                  BigText(text: "0"),
                  SizedBox(
                    width: Dimension.width5,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(Dimension.height20),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(Dimension.radius20),
              ),
              child: BigText(
                text: "\$0.08 Add to cart",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
