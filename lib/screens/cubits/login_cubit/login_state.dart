import 'package:flutter/material.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginLoding extends LoginState {}

class LoginFailure extends LoginState {
  String errMessage;
  LoginFailure({required this.errMessage});
}
