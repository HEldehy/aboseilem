// import 'package:flutter/material.dart';
// import 'package:foktukhier/modules/pages/register_page.dart';
//
// import '../reausable_components/widgets/my_button.dart';
// import '../reausable_components/widgets/my_form_field.dart';
// import '../reausable_components/widgets/text_button_module.dart';
// import 'homepage.dart';
// class LoginPage extends StatelessWidget {
//   static String id = 'LoginPage';
//   const LoginPage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     var emailController = TextEditingController();
//     var passwordController = TextEditingController();
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Expanded(
//                 flex: 1,
//                 child: SizedBox(
//                     width: MediaQuery.of(context).size.width/2,
//                     height: MediaQuery.of(context).size.height/6,
//                     child: Image.asset(
//                       'assets/image/logo.png',
//                       fit: BoxFit.cover,
//                     ))),
//             Expanded(
//                 flex: 2,
//                 child: SingleChildScrollView(
//                   physics: const BouncingScrollPhysics(),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 23),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           'Text',
//                           style: TextStyle(
//                               fontSize: 16.0,
//                               fontFamily: 'ICT',
//                               fontWeight: FontWeight.w600,
//                               color: Colors.grey[500]),
//                         ),
//                         Text(
//                           'Sign In',
//                           style: TextStyle(
//                               fontSize: height / 26,
//                               fontFamily: 'JUN',
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black),
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           'Email',
//                           style: TextStyle(
//                               fontSize: 16.0,
//                               fontFamily: 'ICT',
//                               fontWeight: FontWeight.w600,
//                               color: Colors.grey[500]),
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         MyFormField(
//                             controller: emailController,
//                             type: TextInputType.emailAddress,
//                             icon: Icons.email,
//                             label: 'Eg .example@gmail.com',
//                             validator: () {
//                               'Email must Not be empty';
//                             }),
//                         const SizedBox(
//                           height: 12,
//                         ),
//                         Text(
//                           'Password',
//                           style: TextStyle(
//                               fontSize: 16.0,
//                               fontFamily: 'ICT',
//                               fontWeight: FontWeight.w600,
//                               color: Colors.grey[500]),
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         MyFormField(
//                             controller: passwordController,
//                             type: TextInputType.visiblePassword,
//                             icon: Icons.lock,
//                             suffix: Icons.visibility,
//                             label: 'Password',
//                             validator: () {
//                               'Password must Not be empty';
//                             }),
//                         const SizedBox(
//                           height: 100,
//                         ),
//                         MyButton(
//                             onClick: () {
//                               Navigator.pushNamed(context, HomePage.id);
//
//                             },
//                             height: height / 15.5,
//                             //  width: double.infinity,
//                             buttonColor: Colors.blue,
//                             radius: height / 100,
//                             text: 'Sign In',
//                             textColor: Colors.white),
//                         // const SizedBox(
//                         //   height: 5,
//                         // ),
//                         // Row(
//                         //   mainAxisAlignment: MainAxisAlignment.center,
//                         //   children: [
//                         //     Text(
//                         //       'Don\'t has any account ?',
//                         //       style: TextStyle(
//                         //         fontWeight: FontWeight.bold,
//                         //         fontSize: 16,
//                         //         fontFamily: 'ICT',
//                         //         color: Colors.grey[500],
//                         //       ),
//                         //     ),
//                         //     // ButtonOfText(
//                         //     //     text: 'Register here'.toUpperCase(),
//                         //     //     color: Colors.blue,
//                         //     //     onClick: () {
//                         //     //       Navigator.pushNamed(context, RegisterPage.id);
//                         //     //     }),
//                         //   ],
//                         // ),
//                       ],
//                     ),
//                   ),
//                 )),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'LoginPage';
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final idController = TextEditingController();
  final emailController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(), password: idController.text.trim());
  }

  void dispose() {
    super.dispose();
    emailController.dispose();
    idController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                  height: 250,
                  width: 250,
                  child: Image.asset('assets/image/logo.png')),
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
                  onTap: signIn,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                        child: Text('اعرض النتيجة',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Cairo',
                                fontSize: 18,
                                fontWeight: FontWeight.bold))),
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
