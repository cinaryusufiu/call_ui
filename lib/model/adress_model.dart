
import 'package:json_annotation/json_annotation.dart';

part 'adress_model.g.dart';

@JsonSerializable()
class AdressModel {
  String street, landmark, city , state;
AdressModel({required this.street, required this.landmark, required this.city, required this.state});

  factory AdressModel.fromJson(Map<String,dynamic> data) => _$AdressModelFromJson(data);

  Map<String,dynamic> toJson() => _$AdressModelToJson(this);
}