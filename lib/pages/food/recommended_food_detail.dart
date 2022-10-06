import 'package:flutter/material.dart';
import 'package:vogg/utils/colors.dart';
import 'package:vogg/utils/dimension.dart';
import 'package:vogg/widgets/app_icon.dart';
import 'package:vogg/widgets/big_text.dart';
import 'package:vogg/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatefulWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  State<RecommendedFoodDetail> createState() => _RecommendedFoodDetailState();
}

class _RecommendedFoodDetailState extends State<RecommendedFoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                  child: BigText(
                    text: "Nutrition Fruit Meal",
                    size: Dimension.font26,
                  ),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimension.radius20),
                    topRight: Radius.circular(Dimension.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.redAccent,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/image/food1.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                child: ExpandableTextWidget(
                  text:
                      "orking on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way to test your programming and that the tool being created is working well.free online tool. If you're a programmer who's working on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way toorking on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way to test your programming and that the tool being created is working well.free online tool. If you're a programmer who's working on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way toorking on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way to test your programming and that the tool being created is working well.free online tool. If you're a programmer who's working on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way toorking on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way to test your programming and that the tool being created is working well.free online tool. If you're a programmer who's working on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way toorking on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way to test your programming and that the tool being created is working well.free online tool. If you're a programmer who's working on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way toorking on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way to test your programming and that the tool being created is working well.free online tool. If you're a programmer who's working on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way toorking on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way to test your programming and that the tool being created is working well.free online tool. If you're a programmer who's working on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way toorking on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way to test your programming and that the tool being created is working well.free online tool. If you're a programmer who's working on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way toorking on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way to test your programming and that the tool being created is working well.free online tool. If you're a programmer who's working on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way to",
                ),
                margin: EdgeInsets.only(
                  left: Dimension.width20,
                  right: Dimension.width20,
                ),
              ),
            ],
          )),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimension.width20 * 2.5,
                vertical: Dimension.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimension.iconSize24,
                ),
                BigText(
                  text: "\$56.89 x 0",
                  color: AppColors.mainBlackColor,
                  size: Dimension.font26,
                ),
                AppIcon(
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimension.iconSize24,
                ),
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(Dimension.height20),
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(Dimension.radius20),
                  ),
                  child: BigText(
                    text: "\$70 | Add to cart",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
