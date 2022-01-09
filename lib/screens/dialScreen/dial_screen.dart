import 'package:callkit_app/constant.dart';
import 'package:callkit_app/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class DialScreen extends StatelessWidget {
  const DialScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     SizeConfig().init(context);
    return Scaffold(body: DialBody(), backgroundColor: kBackgoundColor,);
  }
} 
