import 'package:cocktail_challenge/data/presenter/home_presenter.dart';
import 'package:cocktail_challenge/utils/colors_util.dart';
import 'package:cocktail_challenge/utils/images_path_util.dart';
import 'package:cocktail_challenge/utils/strings_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<HomePresenter>(
      builder: (__, _, ___) {
        return Container(
          height: size.height * 0.206,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)
            ),
            color: ColorsUtil.brick
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){  _.scaffoldKey.currentState!.openDrawer(); },
                    child: const Icon(Icons.menu, size: 20.0)
                  ),
                  Image.asset(
                    ImagesPathUtil.imageLogo,
                    height: 50, width: 133,
                    fit: BoxFit.contain
                  ),
                  const SizedBox(width: 24)
                ],
              ),
              const SizedBox(height: 23),
              const Text(
                StringsUtil.homeText,
                style: TextStyle(
                  color: ColorsUtil.mainColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 3),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.394),
                child: const Divider(
                  height: 1,
                  color: ColorsUtil.mainColor,
                ),
              )
            ],
          ),
        );
      }
    );
  }
}
