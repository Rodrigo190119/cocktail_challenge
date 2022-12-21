import 'package:cocktail_challenge/utils/colors_util.dart';
import 'package:cocktail_challenge/utils/images_path_util.dart';
import 'package:cocktail_challenge/utils/strings_util.dart';
import 'package:flutter/material.dart';

class LoginBanner extends StatelessWidget {
  const LoginBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 29),
          Image.asset(
            ImagesPathUtil.imageLogo,
            height: 80, width: 133,
            fit: BoxFit.contain
          ),
          const SizedBox(height: 20),
          const Text(
            StringsUtil.registerAndLoginText,
            style: TextStyle(
              color: ColorsUtil.mainColor,
              fontSize: 12.0,
              fontWeight: FontWeight.w600
            ),
          ),
        ],
      ),
    );
  }
}
