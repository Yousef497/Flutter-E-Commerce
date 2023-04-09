import 'package:e_commerce/core/constants/imageassets.dart';
import 'package:flutter/cupertino.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      height: MediaQuery.of(context).size.height > 800 ? 190 : 150,
      fit: BoxFit.fill,
      image: const AssetImage(AppImageAssets.logo),
    );
  }
}
