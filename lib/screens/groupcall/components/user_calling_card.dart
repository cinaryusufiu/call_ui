import 'package:callkit_app/screens/dialScreen/components/dial_user_pic.dart';
import 'package:callkit_app/size_config.dart';
import 'package:flutter/material.dart';
import '../../../constant.dart';

class UserCallingCard extends StatelessWidget {
  const UserCallingCard({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  final String name, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgoundColor,
      child: Column(
        children: [
          const Spacer(),
          DialUserPic(
            image: image,
            size: 112,
          ),
          const VerticalSpacing(of: 10),
          Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 19),
          ),
          const VerticalSpacing(of: 5),
          const Text(
            'Calling..',
            style: TextStyle(color: Colors.white60, fontSize: 13),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
