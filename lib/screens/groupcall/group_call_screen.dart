import 'package:callkit_app/constant.dart';
import 'package:callkit_app/screens/auidiowithimage/component/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../size_config.dart';
import 'components/body.dart';

class GroupCallScreen extends StatelessWidget {
  const GroupCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}
AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/Icon Back.svg'),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/Icon User.svg',
            height: 24,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

class bottomNavBar extends StatelessWidget {
  const bottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgoundColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              RoundedButton(
                color: kRedColor,
                iconColor: Colors.white,
                iconSrc: "assets/icons/Icon Close.svg",
                press: () {},
              ),
              Spacer(flex: 3),
              RoundedButton(
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                iconSrc: "assets/icons/Icon Volume.svg",
                press: () {},
              ),
              Spacer(),
              RoundedButton(
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                iconSrc: "assets/icons/Icon Mic.svg",
                press: () {},
              ),
              Spacer(),
              RoundedButton(
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                iconSrc: "assets/icons/Icon Video.svg",
                press: () {},
              ),
              Spacer(),
              RoundedButton(
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                iconSrc: "assets/icons/Icon Repeat.svg",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
