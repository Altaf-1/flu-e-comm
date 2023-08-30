import 'package:e_comm/core/constants/my_assets.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetails extends StatefulWidget {
  const HomeDetails({super.key});

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Netflix Will Charge Money for Password Sharing"
            .text
            .ellipsis
            .make(),
      ),
      body: ListView(
        children: [
          Image.asset(
            MyAssets.blogHead2,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                "Netflix Will Charge Money for Password Sharing"
                    .text
                    .bold
                    .size(22.sp)
                    .fontWeight(FontWeight.w700)
                    .color(Colors.black)
                    .make(),
                Row(
                  children: [
                    const Icon(FeatherIcons.eye),
                    "147 Views".text.make(),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(FeatherIcons.thumbsUp),
                      color: Colors.green,
                    ),
                    "0".text.make(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(FeatherIcons.thumbsDown),
                      color: Colors.red,
                    ),
                    "0".text.make(),
                  ],
                ),
                "In this tutorial, we learned how to change appbar color in Flutter with practical examples, we first saw how to change the color at the page level and then explored the way to change color at the app level. Finally, we also learned what are the different ways to add colors.In this tutorial, we learned how to change appbar color in Flutter with practical examples, we first saw how to change the color at the page level and then explored the way to change color at the app level. Finally, we also learned what are the different ways to add colors.In this tutorial, we learned how to change appbar color in Flutter with practical examples, we first saw how to change the color at the page level and then explored the way to change color at the app level. Finally, we also learned what are the different ways to add colors."
                    .text
                    .size(18.sp)
                    .make(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
