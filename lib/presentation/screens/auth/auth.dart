import 'package:e_comm/core/constants/my_assets.dart';
import 'package:e_comm/core/constants/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.png"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                21.h.heightBox,
                Image.asset(
                  MyAssets.mainLogo,
                  height: 42.h,
                  width: 139.w,
                ).centered(),
                const Spacer(),
                "Explore the world, Billions of Thoughts."
                    .text
                    .size(28.sp)
                    .fontWeight(FontWeight.w800)
                    .color(Colors.white)
                    .make(),
                21.h.heightBox,
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
                  child: "Login"
                      .text
                      .size(16.sp)
                      .fontWeight(FontWeight.w700)
                      .color(Colors.white)
                      .make(),
                ),
                12.h.heightBox,
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Auth()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11.r),
                    ),
                  ),
                  child: "Register"
                      .text
                      .size(16.sp)
                      .fontWeight(FontWeight.w700)
                      .color(Colors.white)
                      .make(),
                ),
                21.h.heightBox,
              ],
            ),
          ),
        )),
      ),
    );
  }
}
