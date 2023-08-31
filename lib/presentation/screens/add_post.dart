import 'package:e_comm/core/constants/my_assets.dart';
import 'package:e_comm/core/constants/my_colors.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  final QuillController _controller = QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 222, 221, 219),
      appBar: AppBar(
        title: "Add Post".text.make().centered(),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.check))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        children: [
          10.h.heightBox,
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.asset(MyAssets.upload),
              CircleAvatar(
                radius: 30,
                backgroundColor: MyColors.primaryColor, //<-- SEE HERE
                child: IconButton(
                  icon: const Icon(
                    FeatherIcons.camera,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          20.h.heightBox,
          const VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10,
            hint: "Enter title",
          ),
          12.h.heightBox,
          const VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10,
            hint: "Enter Slug",
          ),
          12.h.heightBox,
          Container(
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Tags".text.bold.make(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FeatherIcons.chevronRight),
                  ),
                ],
              ),
            ),
          ),
          12.h.heightBox,
          Container(
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Categories".text.bold.make(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FeatherIcons.chevronRight),
                  ),
                ],
              ),
            ),
          ),
          12.h.heightBox,
          QuillToolbar.basic(controller: _controller),
          SizedBox(
            child: QuillEditor.basic(
              controller: _controller,
              readOnly: false, // true for view only mode
            ),
          )
        ],
      ),
    );
  }
}
