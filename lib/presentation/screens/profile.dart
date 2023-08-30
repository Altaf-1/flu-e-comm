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
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 400,
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
          ],
        ),
      ),
    );
  }
}
