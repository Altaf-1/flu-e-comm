import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:e_comm/core/constants/my_assets.dart';
import 'package:e_comm/core/constants/my_colors.dart';
import 'package:e_comm/presentation/screens/auth/login.dart';
import 'package:e_comm/presentation/widgets/primary_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.primaryColor,
        body: SingleChildScrollView(
          child: SafeArea(
            child: FadedScaleAnimation(
              child: Column(
                children: [
                  61.h.heightBox,
                  Image.asset(
                    MyAssets.mainLogo,
                    height: 42.h,
                    width: 139.w,
                  ).centered(),
                  91.h.heightBox,
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(36.r),
                            topRight: Radius.circular(36.r))),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          11.h.heightBox,
                          "Register"
                              .text
                              .size(28.sp)
                              .fontWeight(FontWeight.w800)
                              .color(MyColors.primaryColor)
                              .makeCentered(),
                          21.h.heightBox,
                          "Email"
                              .text
                              .size(18.sp)
                              .fontWeight(FontWeight.w600)
                              .make(),
                          VxTextField(
                            fillColor: Colors.transparent,
                            borderColor: MyColors.primaryColor,
                            borderType: VxTextFieldBorderType.roundLine,
                            borderRadius: 10.r,
                            prefixIcon: const Icon(Icons.email),
                          ),
                          21.h.heightBox,
                          "Password"
                              .text
                              .size(18.sp)
                              .fontWeight(FontWeight.w600)
                              .make(),
                          VxTextField(
                            fillColor: Colors.transparent,
                            isPassword: true,
                            obscureText: true,
                            borderColor: MyColors.primaryColor,
                            borderType: VxTextFieldBorderType.roundLine,
                            borderRadius: 10.r,
                            prefixIcon: const Icon(Icons.lock),
                          ),
                          21.h.heightBox,
                          "Confirm Password"
                              .text
                              .size(18.sp)
                              .fontWeight(FontWeight.w600)
                              .make(),
                          VxTextField(
                            fillColor: Colors.transparent,
                            isPassword: true,
                            obscureText: true,
                            borderColor: MyColors.primaryColor,
                            borderType: VxTextFieldBorderType.roundLine,
                            borderRadius: 10.r,
                            prefixIcon: const Icon(Icons.lock),
                          ),
                          31.h.heightBox,
                          PrimaryCommonButton(
                              buttonName: "Register", onPressed: () {}),
                          31.h.heightBox,
                          "Already Registered"
                              .richText
                              .size(18.sp)
                              .withTextSpanChildren([
                            TextSpan(
                                text: "  Sign In",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Login()),
                                      ),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.red,
                                    fontSize: 18))
                          ]).makeCentered(),
                          31.h.heightBox,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
