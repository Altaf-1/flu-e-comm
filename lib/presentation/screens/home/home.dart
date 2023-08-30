import 'package:e_comm/core/constants/my_assets.dart';
import 'package:e_comm/core/constants/my_colors.dart';
import 'package:e_comm/presentation/screens/home/home_view_model.dart';
import 'package:e_comm/presentation/widgets/home_details.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeModel homeModel = HomeModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            10.h.heightBox,
            SizedBox(
              height: 250,
              child: PageView(
                controller: homeModel.pageController,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        MyAssets.blogHead2,
                      ).cornerRadius(20.r),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        MyAssets.blogHead3,
                      ).cornerRadius(20.r),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        MyAssets.blogHead4,
                      ).cornerRadius(20.r),
                    ],
                  ),
                ],
              ).expand(),
            ),
            SmoothPageIndicator(
              controller: homeModel.pageController, // PageController
              count: 3,
              effect: const WormEffect(
                activeDotColor: MyColors.primaryColor,
                dotHeight: 12.0,
                dotWidth: 12.0,
              ), // your preferred effect
              onDotClicked: (index) {},
            ),
            20.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Latest Post"
                    .text
                    .size(16.sp)
                    .fontWeight(FontWeight.w700)
                    .color(MyColors.primaryColor)
                    .make(),
                "See All"
                    .text
                    .size(16.sp)
                    .fontWeight(FontWeight.w700)
                    .color(MyColors.primaryColor)
                    .make(),
              ],
            ),
            20.h.heightBox,
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => SizedBox(
                height: 20.h,
              ),
              itemCount: 5,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeDetails()),
                        );
                      },
                      child: Image.asset(
                        MyAssets.blogHead2,
                        height: 120,
                        width: 160,
                        fit: BoxFit.cover,
                      ).cornerRadius(20.r),
                    ),
                    10.w.widthBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Netflix Will Charge Money for Password Sharing"
                            .text
                            .size(16.sp)
                            .bold
                            .maxLines(2)
                            .fontWeight(FontWeight.w700)
                            .color(Colors.black)
                            .make(),
                        6.h.heightBox,
                        Row(
                          children: [
                            const Icon(FeatherIcons.clock),
                            10.w.widthBox,
                            "6 Month Ago".text.size(14.sp).make(),
                          ],
                        ),
                        6.h.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            "59 Views".text.size(16.sp).make(),
                            const Icon(FeatherIcons.bookmark),
                          ],
                        ),
                      ],
                    ).expand()
                  ],
                );
              },
            )
          ],
        ),
      )),
    );
  }
}
