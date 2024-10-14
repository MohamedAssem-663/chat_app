import 'package:chat_app2/screens/cubits/login_cubit/login_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  Future<void> loginUser(
      {required String email, required String password}) async {
    emit(LoginLoding());
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(LoginSuccess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'user-not-found') {
        emit(LoginFailure(errMessage: 'user not found '));
      } else if (ex.code == 'wrong-password') {
        emit(LoginFailure(errMessage: 'wrong password'));
      }
    } on Exception catch (e) {
      emit(LoginFailure(errMessage: 'something went wrong'));
    }
  }
}
