import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;

  const CustomTextFormAuth({Key? key,
    required this.hinttext,
    required this.labeltext,
    required this.iconData,
    required this.mycontroller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: TextFormField(
        controller: mycontroller,
        decoration: InputDecoration(
          hintText: hinttext.tr,
          hintStyle: const TextStyle(fontSize: 12),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          suffixIcon: Icon(iconData),

          label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 9),
            child: Text(
                labeltext.tr
            ),
          ),

          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30)
          )
        ),

      ),
    );
  }
}
