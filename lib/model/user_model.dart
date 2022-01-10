
import 'package:callkit_app/model/adress_model.dart';
import 'package:json_annotation/json_annotation.dart';


part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  String name, phone, email;
  bool? subscription;
  AdressModel? address;
  
  UserModel({required this.name, required this.phone, required this.email});

  factory UserModel.fromJson(Map<String,dynamic> data) => _$UserModelFromJson(data);
  Map<String,dynamic> toJson() => _$UserModelToJson(this);
}


