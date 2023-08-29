import 'package:animation_wrappers/animations/faded_scale_animation.dart';
import 'package:e_comm/core/constants/my_assets.dart';
import 'package:e_comm/core/constants/my_colors.dart';
import 'package:e_comm/presentation/screens/index/index.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Index())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: Center(
        child: FadedScaleAnimation(child: Image.asset(MyAssets.mainLogo)),
      ),
    );
  }
}
