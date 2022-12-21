import 'dart:io';

import 'package:cocktail_challenge/data/presenter/login_presenter.dart';
import 'package:cocktail_challenge/utils/colors_util.dart';
import 'package:cocktail_challenge/utils/strings_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginUserAvatar extends StatelessWidget {
  const LoginUserAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<LoginPresenter>(
      builder: (__, _, ___) {
        return SizedBox(
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 36.0, top: 50.0),
                child: Text(
                  StringsUtil.imageText,
                  style: TextStyle(
                    color: ColorsUtil.textColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ),
              GestureDetector(
                onTap: _.pickUserAvatar,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0, bottom: 20.0
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Visibility(
                        visible: _.userAvatar != null,
                        replacement: Container(
                          width: 120.0, height: 120.0,
                          color: ColorsUtil.loginContainerColor,
                          child: const Icon(Icons.person),
                        ),
                        child: Image.file(
                          File(_.userAvatar?.path ?? ''),
                          width: 120.0, height: 120.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
