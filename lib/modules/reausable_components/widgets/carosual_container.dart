import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerDesign extends StatelessWidget {
  double height;
  double width;
  String text;
  Function function;
  //String image;
  ContainerDesign({Key ?key,
    required this.height,
    required this.width,
    required this.text,
    required this.function,
    // @required this.image
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function(),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color:   Colors.blueAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              width: width,
              height: height,
            ),

            // child:  Image.asset(image,
            //   fit: BoxFit.cover,
            // ),
          ),

          Center(
            child: Text(text,style: const TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: 'Cairo',

            ),
            ),
          )
        ],
      ),
    );
  }
}