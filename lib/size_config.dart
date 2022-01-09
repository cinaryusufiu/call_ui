import 'package:flutter/material.dart';

// SizeConfig help us to make our UI responsive
/// Make sure you need to call [SizeConfig.init(context)] on your starting screen
class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight ?? 0.0;
  // Our designer use iPhone 11, that's why we use 896.0
  return (inputHeight / 896.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth ?? 0.0;
  // 414 is the layout width that designer use or you can say iPhone 11  width
  return (inputWidth / 414.0) * screenWidth;
}

// For add free space horizontally
class HorizontalSpacing extends StatelessWidget {
  const HorizontalSpacing({
    Key? key,
    this.of = 20,
  }) : super(key: key);

  final double of;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(of),
    );
  }
}


class VerticalSpacing extends StatelessWidget {
  const VerticalSpacing({Key? key , this.of = 20}) : super(key: key);
  final double of ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(of),
    );
  }
}