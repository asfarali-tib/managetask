import 'package:managetask/data/remote/login/models/login_model.dart';
import 'package:managetask/data/remote/login/provider/login_provider.dart';

class LoginRepository {
  final _provider = LoginProvider();

  Future<LoginResponseModel> fetchLoginData(LoginRequestModel loginRequestModel) {
    return _provider.fetchLoginData(loginRequestModel);
  }
}

class NetworkError extends Error {}