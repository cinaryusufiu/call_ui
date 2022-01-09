
import 'package:callkit_app/size_config.dart';
import 'package:flutter/material.dart';

import 'component/body.dart';

class AudioCallWithImage extends StatelessWidget {
 
  const AudioCallWithImage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold( body: Body());
  }
}

