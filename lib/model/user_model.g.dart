// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      name: json['name'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
    )
      ..subscription = json['subscription'] as bool?
      ..address = json['address'] == null
          ? null
          : AdressModel.fromJson(json['address'] as Map<String, dynamic>);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'subscription': instance.subscription,
      'address': instance.address?.toJson(),
    };
