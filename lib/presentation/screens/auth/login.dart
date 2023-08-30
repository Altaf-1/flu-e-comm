import 'package:animation_wrappers/animations/faded_scale_animation.dart';
import 'package:e_comm/core/constants/my_assets.dart';
import 'package:e_comm/core/constants/my_colors.dart';
import 'package:e_comm/presentation/screens/auth/register.dart';
import 'package:e_comm/presentation/screens/general.dart';
import 'package:e_comm/presentation/widgets/primary_Button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.primaryColor,
        resizeToAvoidBottomInset: false,
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
                          41.h.heightBox,
                          "Login"
                              .text
                              .size(28.sp)
                              .fontWeight(FontWeight.w800)
                              .color(MyColors.primaryColor)
                              .makeCentered(),
                          41.h.heightBox,
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
                          31.h.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              "Forgot Password"
                                  .text
                                  .size(18.sp)
                                  .fontWeight(FontWeight.w600)
                                  .make(),
                            ],
                          ),
                          31.h.heightBox,
                          PrimaryCommonButton(
                            buttonName: "Login",
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const General()),
                              );
                            },
                          ),
                          31.h.heightBox,
                          "Don't have an Account"
                              .richText
                              .size(18.sp)
                              .withTextSpanChildren([
                            TextSpan(
                                text: "  Sign Up",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Register()),
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
