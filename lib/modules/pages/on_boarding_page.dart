import 'package:flutter/material.dart';
import 'package:foktukhier/modules/pages/register_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../reausable_components/constance/color.dart';
import '../reausable_components/widgets/my_button.dart';
import '../reausable_components/widgets/on_boarding_modules.dart';
import '../reausable_components/widgets/text_button_module.dart';
import 'homepage.dart';
import 'login_page.dart';
//up dated in 30/6 at 00 :38
class OnBoardingPage extends StatefulWidget {
  static String id = 'OnBoardingPag';
  const OnBoardingPage({Key? key}) : super(key: key);
  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  var onBoardingPageController = PageController();
  List<OnBoarding> pageBoarding = [
    OnBoarding(
        image: 'assets/image/logo.png',
        title: 'Text',
        text: 'Text'),
    OnBoarding(
        image: 'assets/image/shopping-cart.png',
        title: 'Text',
        text: 'Text'),
    OnBoarding(
        image: 'assets/image/book.png',
        title: 'Text',
        text: 'Text'),
  ];
  bool isLast = false;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.pushNamed(context, LoginScreen.id);
                  //   },
                  //   child: Container(
                  //     width: width / 6.5,
                  //     height: height / 18,
                  //     decoration: BoxDecoration(
                  //        color: iconColor1.withOpacity(0.9),
                  //       borderRadius: BorderRadius.circular(15),
                  //     ),
                  //     child: Center(
                  //       child: Text(
                  //         'Skip'.toUpperCase(),
                  //         style: const TextStyle(
                  //           color: Colors.black,
                  //           fontWeight: FontWeight.w500,
                  //           fontSize: 18,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Octu',
                    style: theme.bodyText2?.copyWith(
                        color: iconColor1,
                        fontSize: height / 23,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'ICT'),
                  ),
                  Text(
                    'Kheir',
                    style: theme.bodyText2?.copyWith(
                        color: tealColor,
                        fontSize: height / 28,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'ICT'),
                  ),
                ],
              ),
              SizedBox(
                height: height / 35,
              ),
              Expanded(
                flex: 2,
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: onBoardingPageController,
                  onPageChanged: (int index) {
                    if (index == pageBoarding.length - 1) {
                      setState(() {
                        isLast = true;
                      });
                    } else {
                      setState(() {
                        isLast = false;
                      });
                    }
                  },
                  itemBuilder: (context, index) => OnBoardingBuildModules(
                    model: pageBoarding[index],
                  ),
                  itemCount: pageBoarding.length,
                ),
              ),
              SizedBox(
                height: height / 80,
              ),
              SmoothPageIndicator(
                controller: onBoardingPageController,
                count: pageBoarding.length,
                effect: CustomizableEffect(
                  activeDotDecoration: DotDecoration(
                    width: width / 20,
                    height: height / 89,
                    color: iconColor1,
                    borderRadius: BorderRadius.circular(height / 266),
                  ),
                  dotDecoration: DotDecoration(
                    width: width / 20,
                    height: height / 88,
                    color: textColor,
                    borderRadius: BorderRadius.circular(height / 266),
                  ),
                  spacing: width / 79,
                ),
              ),
              SizedBox(
                height: height / 26,
              ),
              MyButton(
                  onClick: () {
                    Navigator.pushNamed(context, HomeScreen.id);
                  },
                  height: height / 15,
                  //width: double.infinity,
                  buttonColor: tealColor,
                  radius: height / 100,
                  text: 'Get started'.toUpperCase(),
                  textColor: buttonBackgroundColor),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     const Text(
              //       'Don\'t have an account ?',
              //       style: TextStyle(
              //           fontWeight: FontWeight.bold,
              //           fontSize: 16,
              //           fontFamily: 'ICT'),
              //     ),
              //     // ButtonOfText(
              //     //     text: 'Sign Up'.toUpperCase(),
              //     //     color: Colors.blue,
              //     //     onClick: () {
              //     //       Navigator.pushNamed(context, RegisterPage.id);
              //     //     })
              //   ],
              // ),
              // SizedBox(
              //   height: height / 53,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
