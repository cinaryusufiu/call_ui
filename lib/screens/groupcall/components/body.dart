import 'package:callkit_app/screens/groupcall/components/user_calling_card.dart';
import 'package:callkit_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(

        padding: EdgeInsets.zero,
        itemCount: demoData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.53),
        itemBuilder: (context, index) => demoData[index]['isCalling']
            ? UserCallingCard(
                name: demoData[index]['name'], image: demoData[index]['image'])
            : Image.asset(demoData[index]['image'] , fit: BoxFit.cover,));
  }
}

List<Map<String, dynamic>> demoData = [
  {
    "isCalling": false,
    "name": "User 1",
    "image": "assets/images/goup_call_1.png",
  },
  {
    "isCalling": true,
    "name": "Steve jon",
    "image": "assets/images/group_call_face_small.png",
  },
  {
    "isCalling": false,
    "name": "User 1",
    "image": "assets/images/group_call_face_2.png",
  },
  {
    "isCalling": false,
    "name": "User 1",
    "image": "assets/images/group_call_face_3.png",
  },
];
