import 'package:e_comm/core/constants/my_assets.dart';
import 'package:e_comm/core/constants/my_colors.dart';
import 'package:e_comm/presentation/screens/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

import 'index_view_model.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  IndexModel indexModel = IndexModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                31.h.heightBox,
                Image.asset(
                  MyAssets.mainLogo,
                  color: MyColors.primaryColor,
                  height: 42.h,
                  width: 139.w,
                ),
                31.h.heightBox,
                PageView(
                  controller: indexModel.pageController,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          MyAssets.intro1Logo,
                        ),
                        "This is a intor page of the application it will be shown online"
                            .text
                            .size(15.sp)
                            .fontWeight(FontWeight.w700)
                            .align(TextAlign.center)
                            .color(Colors.black)
                            .make(),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          MyAssets.intro2Logo,
                          height: 350.h,
                          width: 333.w,
                        ),
                        "This is a intor page of the application it will be shown online"
                            .text
                            .size(15.sp)
                            .fontWeight(FontWeight.w700)
                            .align(TextAlign.center)
                            .color(Colors.black)
                            .make(),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          MyAssets.intro3Logo,
                          height: 350.h,
                          width: 333.w,
                        ),
                        "This is a intor page of the application it will be shown online"
                            .text
                            .size(15.sp)
                            .fontWeight(FontWeight.w700)
                            .align(TextAlign.center)
                            .color(Colors.black)
                            .make(),
                      ],
                    ),
                  ],
                ).expand(),
                61.h.heightBox,
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Auth()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.primaryColor,
                    minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11.r),
                    ),
                  ),
                  child: "Get Selected"
                      .text
                      .size(16.sp)
                      .fontWeight(FontWeight.w700)
                      .color(Colors.white)
                      .make(),
                ),
                61.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Skip"
                        .text
                        .size(16.sp)
                        .fontWeight(FontWeight.w700)
                        .color(MyColors.primaryColor)
                        .make(),
                    SmoothPageIndicator(
                      controller: indexModel.pageController, // PageController
                      count: 3,
                      effect: const WormEffect(
                        activeDotColor: MyColors.primaryColor,
                        dotHeight: 12.0,
                        dotWidth: 12.0,
                      ), // your preferred effect
                      onDotClicked: (index) {},
                    ),
                    "Next"
                        .text
                        .size(16.sp)
                        .fontWeight(FontWeight.w700)
                        .color(MyColors.primaryColor)
                        .make(),
                  ],
                ),
                21.h.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
