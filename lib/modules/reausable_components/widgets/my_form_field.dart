import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  Widget? widget;
  final TextEditingController controller;
  final TextInputType type;
  IconData? icon;
  Widget ?prefix;
  final String label;
  final VoidCallback validator;
  ValueChanged<String>? onChange;
  ValueChanged<String>? onSubmit;
  VoidCallback? onTap;
  VoidCallback? suffixPressed;
  VoidCallback? prefixPressed;
  bool? isClick = true;
  IconData? suffix;
  bool? isPassword = false;
  FocusNode? focusNode;
  MyFormField(
      {Key? key,
      this.widget,
      required this.controller,
      required this.type,
      this.icon,
      required this.label,
      required this.validator,
      this.onTap,
      this.onSubmit,
      this.onChange,
      this.prefixPressed,
      this.suffixPressed,
      this.focusNode,
      this.isClick,
      this.isPassword,
      this.suffix,
      this.prefix
      })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: prefix,
          suffixIcon: suffix != null
              ? IconButton(onPressed: suffixPressed, icon: Icon(suffix))
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(1.0),
          ),
        ),
        validator: (value) {
          return '$value Must Not be empty';
        },
        onTap: () {
          onTap!();
        },
        onFieldSubmitted: (String value) {
          onSubmit!;
        },
        onChanged: onChange,
      ),
    );
  }
}
