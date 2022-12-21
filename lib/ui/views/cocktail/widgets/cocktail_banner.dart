import 'package:cocktail_challenge/utils/colors_util.dart';
import 'package:cocktail_challenge/utils/images_path_util.dart';
import 'package:flutter/material.dart';

class CocktailBanner extends StatelessWidget {
  const CocktailBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.146,
      width: size.width,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)
          ),
          color: ColorsUtil.brick
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              child: const Icon(Icons.keyboard_backspace),
              onTap: (){ Navigator.pop(context); },
            ),
            Image.asset(
              ImagesPathUtil.imageLogo,
              height: 50, width: 133,
              fit: BoxFit.contain
            ),
            const SizedBox(width: 24)
          ],
        ),
      ),
    );
  }
}
