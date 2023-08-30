import 'package:e_comm/core/constants/my_colors.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: "Category".text.size(16.sp).bold.make().centered(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.plus))
        ],
      ),
    );
  }
}
