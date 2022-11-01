import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vogg/controllers/cart_controller.dart';
import 'package:vogg/controllers/popular_product_controller.dart';
import 'package:vogg/pages/home/main_food_page.dart';
import 'package:vogg/routs/rout_helper.dart';
import 'package:vogg/utils/app_constants.dart';
import 'package:vogg/utils/colors.dart';
import 'package:vogg/widgets/app_icon.dart';
import 'package:vogg/widgets/big_text.dart';
import 'package:vogg/widgets/small_text.dart';

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
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RoutHelper.getInitial());
                  },
                  child: AppIcon(
                    icon: Icons.home_outlined,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    iconSize: Dimension.iconSize24,
                  ),
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimension.iconSize24,
                ),
              ],
            ),
          ),
          Positioned(
            top: Dimension.height20 * 5,
            left: Dimension.width20,
            right: Dimension.width20,
            bottom: 0,
            child: Container(
              margin: EdgeInsets.only(top: Dimension.height15),
              child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: GetBuilder<CartController>(
                    builder: (cartController) {
                      return ListView.builder(
                          itemCount: cartController.getItems.length,
                          itemBuilder: (_, index) {
                            return Container(
                              height: Dimension.height20 * 5,
                              width: double.maxFinite,
                              child: Row(
                                children: [
                                  Container(
                                    width: Dimension.height20 * 5,
                                    height: Dimension.height20 * 5,
                                    margin: EdgeInsets.only(
                                        bottom: Dimension.height10),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            AppConstants.BASE_URL +
                                                AppConstants.UPLOAD_URL +
                                                cartController
                                                    .getItems[index].img!),
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          Dimension.radius20),
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: Dimension.width10,
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: Dimension.height20 * 5,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          BigText(
                                            text: cartController
                                                .getItems[index].name!,
                                            color: Colors.black54,
                                          ),
                                          SmallText(
                                            text: "Spicy",
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              BigText(
                                                text: cartController
                                                    .getItems[index].price!
                                                    .toString(),
                                                color: Colors.redAccent,
                                              ),
                                              Container(
                                                padding: EdgeInsets.all(
                                                    Dimension.height10),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          Dimension.radius20),
                                                ),
                                                child: Row(
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        // popularProduct
                                                        //     .setQuantity(false);
                                                      },
                                                      child: Icon(
                                                        Icons.remove,
                                                        color:
                                                            AppColors.signColor,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: Dimension.width5,
                                                    ),
                                                    BigText(text: '0'),
                                                    SizedBox(
                                                      width: Dimension.width5,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        // popularProduct
                                                        //     .setQuantity(true);
                                                      },
                                                      child: Icon(
                                                        Icons.add,
                                                        color:
                                                            AppColors.signColor,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                  )),
            ),
          )
        ],
      ),
    );
  }
}
