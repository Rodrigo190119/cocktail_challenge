import 'dart:io';

import 'package:cocktail_challenge/utils/app_constants.dart';
import 'package:cocktail_challenge/utils/colors_util.dart';
import 'package:cocktail_challenge/utils/images_path_util.dart';
import 'package:cocktail_challenge/utils/preferences_util.dart';
import 'package:flutter/material.dart';

class HomeDrawerHeader extends StatelessWidget {
  const HomeDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        decoration: BoxDecoration(
            color: ColorsUtil.brick
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Visibility(
                visible: Prefs.getString(AppConstants.userAvatar).isNotEmpty,
                replacement: Container(
                  width: 80.0, height: 80.0,
                  color: ColorsUtil.loginContainerColor,
                  child: const Icon(Icons.person),
                ),
                child: Image.file(
                  File(Prefs.getString(AppConstants.userAvatar)),
                  width: 80.0, height: 80.0,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) {
                    return Image.asset(
                      ImagesPathUtil.errorImage,
                      width: 80.0, height: 80.0,
                    );
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(Prefs.getString(AppConstants.userFirstName)),
                Text(Prefs.getString(AppConstants.userLastName))
              ],
            )
          ],
        )
    );
  }
}
