// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

//======================REQUEST============================//

LoginRequestModel loginRequestModelFromJson(String str) => LoginRequestModel.fromJson(json.decode(str));

String loginRequestModelToJson(LoginRequestModel data) => json.encode(data.toJson());

@freezed
class LoginRequestModel with _$LoginRequestModel {
    const factory LoginRequestModel({
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "password")
        String? password,
    }) = _LoginRequestModel;

    factory LoginRequestModel.fromJson(Map<String, dynamic> json) => _$LoginRequestModelFromJson(json);
}

//======================RESPONSE============================//

LoginResponseModel loginResponseModelFromJson(String str) => LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) => json.encode(data.toJson());

@freezed
class LoginResponseModel with _$LoginResponseModel {
    const factory LoginResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
        @JsonKey(name: "accessToken")
        String? accessToken,
        @JsonKey(name: "refreshToken")
        String? refreshToken,
    }) = _LoginResponseModel;

    factory LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "adminType")
        dynamic adminType,
        @JsonKey(name: "lastName")
        String? lastName,
        @JsonKey(name: "phone")
        String? phone,
        @JsonKey(name: "workingId")
        String? workingId,
        @JsonKey(name: "city")
        String? city,
        @JsonKey(name: "address")
        String? address,
        @JsonKey(name: "image")
        String? image,
        @JsonKey(name: "status")
        bool? status,
        @JsonKey(name: "isFreelancer")
        bool? isFreelancer,
        @JsonKey(name: "yearsOfExperience")
        int? yearsOfExperience,
        @JsonKey(name: "department")
        String? department,
        @JsonKey(name: "fcmToken")
        String? fcmToken,
        @JsonKey(name: "isDelete")
        bool? isDelete,
        @JsonKey(name: "firstName")
        String? firstName,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "createdAt")
        String? createdAt,
        @JsonKey(name: "updatedAt")
        String? updatedAt,
        @JsonKey(name: "id")
        String? id,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
