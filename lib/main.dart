import 'package:chat_app2/screens/chat_page.dart';
import 'package:chat_app2/screens/cubits/auth_cubit/auth_cubit.dart';
import 'package:chat_app2/screens/cubits/chat_cubit/chat_cubit.dart';
import 'package:chat_app2/screens/login_page.dart';
import 'package:chat_app2/screens/register_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ScholarCate());
}

class ScholarCate extends StatelessWidget {
  const ScholarCate({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => ChatCubit())
      ],
      child: MaterialApp(
        routes: {
          LoginPage.id: (context) => LoginPage(),
          RegisterPage.id: (context) => RegisterPage(),
          ChatPage.id: (context) => ChatPage(),
        },
        debugShowCheckedModeBanner: false,
        initialRoute: LoginPage.id,
      ),
    );
  }
}
