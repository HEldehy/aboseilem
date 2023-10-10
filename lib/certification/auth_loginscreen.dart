import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthLoginScreen extends StatefulWidget {
  const AuthLoginScreen({Key? key}) : super(key: key);
  @override
  State<AuthLoginScreen> createState() => _AuthLoginScreenState();
}

class _AuthLoginScreenState extends State<AuthLoginScreen> {
  final   idController=TextEditingController();
  final emailController=TextEditingController();

  Future signIn ()
  async{
    await
    FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text.trim(),
        password: idController.text.trim());
  }

  void dispose(){
    super.dispose();
    emailController.dispose();
    idController.dispose();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.white,
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        elevation:0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50,),

              Container(
                  height: 250,
                  width: 250,
                  child: Image.asset('assets/cert.jpeg')),
              const SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'اسم المستخدم (الرقم القومى+@kgr.dam)',

                      ),

                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      controller: idController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'الرقم القومى',

                      ),

                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                  onTap:signIn,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                        child: Text(
                            'اعرض النتيجة',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Cairo',
                                fontSize: 18,
                                fontWeight: FontWeight.bold)
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
