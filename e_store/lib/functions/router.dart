import 'package:e_store/presentation/screens/auth/create_account.dart';
import 'package:e_store/presentation/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

class RouterFunction extends StatelessWidget {
  const RouterFunction({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        
        '/login_screen': (context) => const LoginScreen(),
        '/create_account_screen': (context) => const CreateAccount(),
        
      },
    );
  }
}