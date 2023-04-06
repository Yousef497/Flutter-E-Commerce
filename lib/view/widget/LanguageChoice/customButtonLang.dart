import 'package:e_commerce/core/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonLang extends StatelessWidget {

  final String textbutton;
  final void Function()? onPressed ;
  const CustomButtonLang({Key? key, required this.textbutton, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.15,
      width: MediaQuery.of(context).size.width*0.3,
      child: MaterialButton(
        color: AppColors.purple,
        textColor: AppColors.white,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
        onPressed: onPressed,
        child: Text(
          textbutton,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
