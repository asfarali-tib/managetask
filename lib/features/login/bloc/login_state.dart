part of 'login_bloc.dart';

@immutable
sealed class LoginState extends Equatable{
  const LoginState();

  @override
  List<Object?> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginLoaded extends LoginState {
  final LoginResponseModel loginResponseModel;
  const LoginLoaded(this.loginResponseModel);
  @override
  List<Object?> get props => [loginResponseModel];
}

class LoginError extends LoginState {
  final LoginResponseModel loginResponseModel;
  const LoginError(this.loginResponseModel);
}