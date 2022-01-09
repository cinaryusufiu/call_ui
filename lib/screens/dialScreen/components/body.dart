import 'package:callkit_app/constant.dart';
import 'package:callkit_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dial_user_pic.dart';

class DialBody extends StatelessWidget {
  const DialBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Anna Williams',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Colors.white),
              ),
              const Text(
                'Calling....',
                style: TextStyle(color: Colors.white60),
              ),
              VerticalSpacing(),
              DialUserPic(image: 'assets/images/calling_face.png'),
              Spacer(),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  DialButton(
                    iconSrc: 'assets/icons/Icon Mic.svg',
                    text: 'Audio',
                    press: () {},
                  ),
                  DialButton(
                    iconSrc: 'assets/icons/Icon Volume.svg',
                    text: 'Microphone',
                    press: () {},
                  ),
                  DialButton(
                    iconSrc: 'assets/icons/Icon Video.svg',
                    text: 'Video',
                    press: () {},
                  ),
                  DialButton(
                    iconSrc: 'assets/icons/Icon Message.svg',
                    text: 'Message',
                    press: () {},
                  ),
                  DialButton(
                    iconSrc: 'assets/icons/Icon User.svg',
                    text: 'Add Contact',
                    press: () {},
                  ),
                  DialButton(
                    iconSrc: 'assets/icons/Icon Voicemail.svg',
                    text: 'Voicemail',
                    press: () {},
                  ),
                ],
              ),
              VerticalSpacing(),
              RoundedButton(
                press: () {},
                color: kRedColor,
                iconColor: Colors.white,
                iconSrc: 'assets/icons/call_end.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DialButton extends StatelessWidget {
  const DialButton({
    Key? key,
    required this.iconSrc,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String iconSrc, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: getProportionateScreenWidth(120),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: Colors.transparent,
            padding:
                EdgeInsets.symmetric(vertical: getProportionateScreenWidth(20)),
          ),
          child: Column(
            children: [
              SvgPicture.asset(iconSrc, color: Colors.white),
              const VerticalSpacing(of: 5),
              Text(text,
                  style: const TextStyle(color: Colors.white, fontSize: 13)),
            ],
          ),
          onPressed: press,
        ));
  }
}
