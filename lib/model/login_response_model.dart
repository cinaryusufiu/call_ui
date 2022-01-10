import 'package:json_annotation/json_annotation.dart';


part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponse {
  
  @JsonKey(name: 'access_token')
  final String accessToken;
  LoginResponse(this.accessToken);
  
  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
