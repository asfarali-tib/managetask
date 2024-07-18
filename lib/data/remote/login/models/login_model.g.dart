// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestModelImpl _$$LoginRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginRequestModelImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$LoginRequestModelImplToJson(
        _$LoginRequestModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseModelImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
        _$LoginResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      adminType: json['adminType'],
      lastName: json['lastName'] as String?,
      phone: json['phone'] as String?,
      workingId: json['workingId'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      image: json['image'] as String?,
      status: json['status'] as bool?,
      isFreelancer: json['isFreelancer'] as bool?,
      yearsOfExperience: (json['yearsOfExperience'] as num?)?.toInt(),
      department: json['department'] as String?,
      fcmToken: json['fcmToken'] as String?,
      isDelete: json['isDelete'] as bool?,
      firstName: json['firstName'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'adminType': instance.adminType,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'workingId': instance.workingId,
      'city': instance.city,
      'address': instance.address,
      'image': instance.image,
      'status': instance.status,
      'isFreelancer': instance.isFreelancer,
      'yearsOfExperience': instance.yearsOfExperience,
      'department': instance.department,
      'fcmToken': instance.fcmToken,
      'isDelete': instance.isDelete,
      'firstName': instance.firstName,
      'email': instance.email,
      'role': instance.role,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'id': instance.id,
    };
