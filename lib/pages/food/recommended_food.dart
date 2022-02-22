import 'package:flutter/material.dart';
import 'package:restaurant/utils/colors.dart';
import 'package:restaurant/utils/dimensions.dart';
import 'package:restaurant/widgets/app_icon.dart';
import 'package:restaurant/widgets/big_text.dart';
import 'package:restaurant/widgets/exandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
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
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                child: Center(
                  child: BigText(
                    size: Dimensions.font26,
                    text: 'Chinese Side',
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/eat.jpg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: ExpandableTextWidget(
                    text:
                        'Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes.The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal.In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.The vegan Chinese-style dumplings are beautiful and comfortable foods that are also versatile. You can consume it as an appetizer or simply use it as a  side dish. Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes.The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal.In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.The vegan Chinese-style dumplings are beautiful and comfortable foods that are also versatile. You can consume it as an appetizer or simply use it as a  side dish.Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes.The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal.In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.The vegan Chinese-style dumplings are beautiful and comfortable foods that are also versatile. You can consume it as an appetizer or simply use it as a  side dish. Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes.The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal.In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.The vegan Chinese-style dumplings are beautiful and comfortable foods that are also versatile. You can consume it as an appetizer or simply use it as a  side dish.Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes.The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal.In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.The vegan Chinese-style dumplings are beautiful and comfortable foods that are also versatile. You can consume it as an appetizer or simply use it as a  side dish. Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes.The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal.In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.The vegan Chinese-style dumplings are beautiful and comfortable foods that are also versatile. You can consume it as an appetizer or simply use it as a  side dish.Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes.The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal.In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.The vegan Chinese-style dumplings are beautiful and comfortable foods that are also versatile. You can consume it as an appetizer or simply use it as a  side dish. Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes.The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal.In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.The vegan Chinese-style dumplings are beautiful and comfortable foods that are also versatile. You can consume it as an appetizer or simply use it as a  side dish.',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.remove,
                ),
                BigText(
                  text: 'Rp. 12.88 ' + 'X' + ' 0',
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.add,
                ),
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
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
        ],
      ),
    );
  }
}
