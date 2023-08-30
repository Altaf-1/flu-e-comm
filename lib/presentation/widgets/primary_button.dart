import 'package:e_comm/core/constants/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class PrimaryCommonButton extends StatelessWidget {
  const PrimaryCommonButton({
    super.key, required this.buttonName, required this.onPressed,
  });

  final String buttonName;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.primaryColor,
        minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.r),
        ),
      ),
      child: buttonName
          .text
          .size(16.sp)
          .fontWeight(FontWeight.w700)
          .color(Colors.white)
          .make(),
    );
  }
}