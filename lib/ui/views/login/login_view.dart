import 'package:cocktail_challenge/ui/views/login/widgets/login_banner.dart';
import 'package:cocktail_challenge/ui/views/login/widgets/login_button.dart';
import 'package:cocktail_challenge/ui/views/login/widgets/login_form.dart';
import 'package:cocktail_challenge/ui/views/login/widgets/login_user_avatar.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: const [
            LoginBanner(),
            LoginUserAvatar(),
            LoginForm(),
            LoginButton(),
          ],
        ),
      ),
    );
  }
}
