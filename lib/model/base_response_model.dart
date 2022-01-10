
import 'package:json_annotation/json_annotation.dart';
part 'base_response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true, fieldRename: FieldRename.snake)
class BaseResponse<T> {

  @JsonKey(name: 'success')
  final bool success;

  @JsonKey(name: 'data')
  final T? data;

  @JsonKey(name: 'message')
  final String? message;
  
BaseResponse(this.success, this.data, this.message);
factory BaseResponse.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT,) => _$BaseResponseFromJson(json, fromJsonT);
Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$BaseResponseToJson(this, toJsonT);
}
