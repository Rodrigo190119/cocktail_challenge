import 'package:cocktail_challenge/data/presenter/login_presenter.dart';
import 'package:cocktail_challenge/utils/colors_util.dart';
import 'package:cocktail_challenge/utils/strings_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<LoginPresenter>(
      builder: (__, _, ___) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 10.0),
          child: ElevatedButton(
            onPressed: (){
              _.validateForm(context);
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              fixedSize: Size(
                size.width,
                32
              ),
              backgroundColor: ColorsUtil.loginButtonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40), // <-- Radius
              ),
            ),
            child: const Text(
              StringsUtil.loginText,
              style: TextStyle(
                  color: ColorsUtil.mainColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
        );
      }
    );
  }
}
