import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:e_comm/core/constants/my_colors.dart';
import 'package:e_comm/presentation/screens/add_post.dart';
import 'package:e_comm/presentation/screens/categories.dart';
import 'package:e_comm/presentation/screens/home/home.dart';
import 'package:e_comm/presentation/screens/profile.dart';
import 'package:e_comm/presentation/screens/tag.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';

class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  List<TabItem> items = [
    const TabItem(
      icon: Icons.home,
      // title: 'Home',
    ),
    const TabItem(
      icon: FeatherIcons.tag,
      // title: 'Shop',
    ),
    const TabItem(
      icon: FeatherIcons.plus,
      // title: 'Wishlist',
    ),
    const TabItem(
      icon: FeatherIcons.hash,
      // title: 'Cart',
    ),
    const TabItem(
      icon: FeatherIcons.user,
      // title: 'profile',
    ),
  ];

  int visit = 0;

  List<Widget> pages = [
    const Home(),
    const Categories(),
    const AddPost(),
    const Tag(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(visit),
      bottomNavigationBar: BottomBarInspiredInside(
        items: items,
        backgroundColor: Colors.white,
        color: MyColors.primaryColor,
        colorSelected: Colors.white,
        indexSelected: visit,
        onTap: (int index) => setState(() {
          visit = index;
        }),
        chipStyle: const ChipStyle(convexBridge: true),
        itemStyle: ItemStyle.circle,
        animated: true,
      ),
    );
  }
}
