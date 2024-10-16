part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

class LoginSuccess extends AuthState {}

class LoginLoding extends AuthState {}

class LoginFailure extends AuthState {
  String errMessage;
  LoginFailure({required this.errMessage});
}

class RegisterSuccess extends AuthState {}

class RegisterLoding extends AuthState {}

class RegisterFailure extends AuthState {
  String errMessage;
  RegisterFailure({required this.errMessage});
}
