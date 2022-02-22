import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/routes/route.dart';
import 'package:restaurant/utils/colors.dart';
import 'package:restaurant/utils/dimensions.dart';
import 'package:restaurant/widgets/app_column.dart';
import 'package:restaurant/widgets/big_text.dart';
import 'package:restaurant/widgets/icon_and_text_widget.dart';
import 'package:restaurant/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pagesController = PageController(viewportFraction: 0.85);
  var currPageValue = 0.0;
  double scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;
  @override
  void initState() {
    super.initState();
    pagesController.addListener(() {
      setState(() {
        currPageValue = pagesController.page!;
      });
    });
  }

  // @override
  // void dispose() {
  //   pagesController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Slider section
        Container(
          //  color: Colors.amber,
          height: Dimensions.pageView,
          child: GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.popularFood);
            },
            child: PageView.builder(
              controller: pagesController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              },
            ),
          ),
        ),
        //dots
        new DotsIndicator(
          dotsCount: 5,
          position: currPageValue,
          decorator: DotsDecorator(
            color: Colors.black87, // Inactive color
            activeColor: AppColors.mainColor,
            size: Size.square(9.0),
            activeSize: Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        //Popular text
        SizedBox(height: Dimensions.height30),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: 'Popular'),
              SizedBox(width: Dimensions.width10),
              Container(
                margin: EdgeInsets.only(bottom: 3),
                child: BigText(text: '.', color: Colors.black26),
              ),
              SizedBox(width: Dimensions.width10),
              Container(
                margin: EdgeInsets.only(bottom: 2),
                child: SmallText(text: 'Food pairing'),
              ),
            ],
          ),
        ),
        //List of food and images
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: Dimensions.height10),
              child: Row(
                children: [
                  //image section
                  Container(
                    height: Dimensions.listViewImgSize,
                    width: Dimensions.listViewImgSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white38,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/eat.jpg'),
                      ),
                    ),
                  ),
                  // text container
                  Expanded(
                    child: Container(
                      height: Dimensions.listViewTextContSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimensions.radius20),
                          bottomRight: Radius.circular(Dimensions.radius20),
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: Dimensions.width10,
                            right: Dimensions.width10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BigText(text: 'Nutritious fruit meal in China'),
                            SizedBox(height: Dimensions.height10),
                            SmallText(text: 'With chinese characteristics'),
                            SizedBox(height: Dimensions.height10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconAndTextWidget(
                                  icon: Icons.circle_sharp,
                                  text: 'Normal',
                                  iconColor: AppColors.iconColor1,
                                ),
                                IconAndTextWidget(
                                  icon: Icons.location_on,
                                  text: '1.7km',
                                  iconColor: AppColors.mainColor,
                                ),
                                IconAndTextWidget(
                                  icon: Icons.access_time_filled_rounded,
                                  text: '32min',
                                  iconColor: AppColors.iconColor2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();

    if (index == currPageValue.floor()) {
      var currScale = 1 - (currPageValue - index) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currPageValue.floor() + 1) {
      var currScale =
          scaleFactor + (currPageValue - index + 1) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currPageValue.floor() - 1) {
      var currScale = 1 - (currPageValue - index) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimensions.width10, right: Dimensions.width10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              color: index.isEven ? Color(0xff69C5DF) : Color(0xff9294CC),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/eat.jpg'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  bottom: Dimensions.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffE8E8E8),
                    blurRadius: 5.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height15,
                    left: Dimensions.width15,
                    right: Dimensions.width15),
                child: AppColumn(text: 'Chinese Side'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
