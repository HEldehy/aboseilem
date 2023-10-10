import 'package:flutter/material.dart';

class OnBoarding {
  final String image;
  final String title;
  final String text;
  OnBoarding({required this.image, required this.title, required this.text});
}

class OnBoardingBuildModules extends StatelessWidget {
  const OnBoardingBuildModules({Key? key, required this.model})
      : super(key: key);
  final OnBoarding model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container(
            width: MediaQuery.of(context).size.width/1.8,
            height: MediaQuery.of(context).size.height/3.5,
            child: Image.asset(model.image))),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            model.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 20.0, fontFamily: 'ICT', fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            model.text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'ICT',
                fontWeight: FontWeight.w500,
                color: Colors.grey[500]),
          ),
        ),
      ],
    );
  }
}
