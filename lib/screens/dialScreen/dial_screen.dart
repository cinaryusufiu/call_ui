import 'dart:convert';

import 'package:callkit_app/constant.dart';
import 'package:callkit_app/model/base_response_model.dart';
import 'package:callkit_app/model/login_response_model.dart';
import 'package:callkit_app/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class DialScreen extends StatelessWidget {
  const DialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    test();
    return Scaffold(
      body: DialBody(),
      backgroundColor: kBackgoundColor,
    );
  }

  void test() {
    final jsonResponse = {
      'success': true,
      'data': {
        "access_token":
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"
      },
      'message': null
    };
    BaseResponse<LoginResponse> result = BaseResponse<LoginResponse>.fromJson(
       jsonResponse,(data) => LoginResponse.fromJson(data as Map<String, dynamic>));
    print(result.data?.accessToken);
  }
}
