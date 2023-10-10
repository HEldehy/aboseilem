import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'firebase_options.dart';
import 'modules/pages/homepage.dart';
import 'modules/pages/login_page.dart';
import 'modules/pages/on_boarding_page.dart';
import 'modules/pages/register_page.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  static String id='LoginPage';
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        )
    );
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OctuKheir',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        OnBoardingPage.id:(context)=>const OnBoardingPage(),
        LoginScreen.id:(context)=>const LoginScreen(),
       // RegisterPage.id:(context)=>const RegisterPage(),
        HomeScreen.id:(context)=> HomeScreen()
      },
      initialRoute: OnBoardingPage.id,
    );

  }
}

