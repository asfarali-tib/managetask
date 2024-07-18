// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:managetask/data/remote/login/models/login_model.dart';
import 'package:managetask/data/remote/login/repository/login_repo.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';


part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    final LoginRepository loginRepository = LoginRepository();
    on<LoginButtonPressed>((event, emit) async {
       try {
        emit(LoginLoading());
        final response = await loginRepository.fetchLoginData(LoginRequestModel(email: event.email, password: event.password));
        log(response.toString());
        if(response.code == 200){
          emit(LoginLoaded(response));
        }
        if (response.isSuccess == false) {
          emit(LoginError(response));
        }
      } on NetworkError {
        emit(const LoginError(LoginResponseModel(isSuccess: false)));
      }
    });
  }
}
