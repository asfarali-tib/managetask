import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:managetask/data/remote/login/models/login_model.dart';

class LoginProvider {
  final Dio _dio = Dio();
  final String _url = 'https://urchin-app-6wybt.ondigitalocean.app/v1/auth/users/login/multirole';

  Future<LoginResponseModel> fetchLoginData(LoginRequestModel loginRequestModel) async {
    try {
      Response response = await _dio.post(
        _url,
        data: loginRequestModel.toJson()
      );
      return LoginResponseModel.fromJson(response.data);
    } catch (error, stacktrace) {
      log("Exception occured: $error stackTrace: $stacktrace");
      return const LoginResponseModel(isSuccess: false);
    }
  }
}