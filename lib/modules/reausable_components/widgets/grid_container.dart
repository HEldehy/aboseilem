import 'package:flutter/material.dart';
import 'navigate_to.dart';
Widget gridContainer(
    BuildContext context,
    Widget widget,
    String text,
    String image,
    ) =>
    InkWell(
      onTap: () {
        navigateTo(context, widget);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 5,left: 2,right: 2),
        child: Container(
          // width: MediaQuery.of(context).size.width/2,
          // height: MediaQuery.of(context).size.height/3,
          decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(10)

          ),

          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: CircleAvatar(
                      backgroundColor: Colors.white,

                      radius: 100,
                      child: SizedBox(

                          width: 100,
                          height: 100,
                          child: Image.asset(image))),
                ),
              ),

              Expanded(
                child: Center(
                  child: Text(text,
                      style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'ICT',

                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),

    );