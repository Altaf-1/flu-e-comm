import 'package:e_comm/core/constants/my_assets.dart';
import 'package:e_comm/core/constants/my_colors.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.logOut))
          ],
        ),
        body: ListView(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 380,
              decoration: const BoxDecoration(
                  color: MyColors.primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                children: [
                  20.h.heightBox,
                  const CircleAvatar(
                    backgroundImage: AssetImage(MyAssets.blogHead1),
                    radius: 50,
                  ),
                  20.h.heightBox,
                  "Sagam".text.size(22.sp).bold.white.make(),
                  "hussainaltaf@gmai;l.com".text.size(18.sp).white.make(),
                  20.h.heightBox,
                  "User Details means basic information collected by Company about Licensee's Users authorized by Licensee to use the Software"
                      .text
                      .center
                      .size(18.sp)
                      .white
                      .make()
                      .pSymmetric(h: 10),
                  30.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            "0".text.white.bold.size(22.sp).make(),
                            "Posts".text.white.size(18.sp).make(),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            "0".text.white.bold.size(22.sp).make(),
                            "Following".text.white.size(18.sp).make(),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            "0".text.white.bold.size(22.sp).make(),
                            "Followers".text.white.size(18.sp).make(),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            20.h.heightBox,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "My Posts".text.bold.size(18.sp).make(),
                  15.h.heightBox,
                  GridView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 12,
                              childAspectRatio: 0.9),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Image.asset(MyAssets.blogHead1).cornerRadius(10.r),
                            10.h.heightBox,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "Netflix Will Charge Money for Password Sharing"
                                    .text
                                    .bold
                                    .color(Colors.black)
                                    .make()
                                    .expand(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(FeatherIcons.moreVertical),
                                ),
                              ],
                            )
                          ],
                        );
                      })
                ],
              ),
            ),
          ],
        ));
  }
}
