import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/utils/colors.dart';

import 'package:restaurant/utils/dimensions.dart';
import 'package:restaurant/widgets/app_column.dart';
import 'package:restaurant/widgets/app_icon.dart';
import 'package:restaurant/widgets/big_text.dart';
import 'package:restaurant/widgets/exandable_text_widget.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.redAccent,
      body: Stack(
        children: [
          //bacground image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/eat.jpg'),
                ),
              ),
            ),
          ),
          // icon widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: AppIcon(icon: Icons.arrow_back_ios),
                ),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          //introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: 'Chinese Side'),
                  SizedBox(height: Dimensions.height20),
                  BigText(text: 'Introduce'),
                  SizedBox(height: Dimensions.height20),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: ExpandableTextWidget(
                        text:
                            'Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes.The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal.In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.The vegan Chinese-style dumplings are beautiful and comfortable foods that are also versatile. You can consume it as an appetizer or simply use it as a  side dish. Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes.The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal.In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.The vegan Chinese-style dumplings are beautiful and comfortable foods that are also versatile. You can consume it as an appetizer or simply use it as a  side dish.',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.width20,
          vertical: Dimensions.height30,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width20,
                vertical: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor),
                  SizedBox(width: Dimensions.width10 / 2),
                  BigText(text: '0'),
                  SizedBox(width: Dimensions.width10 / 2),
                  Icon(Icons.add, color: AppColors.signColor),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width20,
                vertical: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
              child: BigText(
                text: 'Rp. 60.000 | Add to cart',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
