import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../modules/pages/homepage.dart';
import '../modules/pages/login_page.dart';
import 'cert_screen.dart';
import 'auth_loginscreen.dart';
class AuthCert extends StatelessWidget {
  const AuthCert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot)  {
          if(snapshot.hasData){
            return  const HomeScreen();
          }else{
            return const LoginScreen();
          }

        },
      ),
    );
  }
}
