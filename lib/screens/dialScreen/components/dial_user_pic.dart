import 'package:callkit_app/size_config.dart';
import 'package:flutter/material.dart';

class DialUserPic extends StatelessWidget {
  const DialUserPic({
    Key? key,
    this.size = 192,
    required this.image,
  }) : super(key: key);

  final double size;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all((30 / 192) * size),
        width: getProportionateScreenWidth(size),
        height: getProportionateScreenHeight(size),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
            gradient: RadialGradient(colors: [
              Colors.white.withOpacity(0.02),
              Colors.white.withOpacity(0.05),
            ], stops: const [
              0.5,
              1
            ])),
        child: ClipRRect(
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ));
  }
}
