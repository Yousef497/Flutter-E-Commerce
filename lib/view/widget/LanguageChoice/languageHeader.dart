import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/color.dart';

class LanguageHeader extends StatelessWidget {
  const LanguageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Choose a Language".tr,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  color: AppColors.white
              ),
            ),
          )
        ],
      ),
    );
  }
}
