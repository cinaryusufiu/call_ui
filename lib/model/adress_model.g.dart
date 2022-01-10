// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adress_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdressModel _$AdressModelFromJson(Map<String, dynamic> json) => AdressModel(
      street: json['street'] as String,
      landmark: json['landmark'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
    );

Map<String, dynamic> _$AdressModelToJson(AdressModel instance) =>
    <String, dynamic>{
      'street': instance.street,
      'landmark': instance.landmark,
      'city': instance.city,
      'state': instance.state,
    };
