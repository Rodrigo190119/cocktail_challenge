import 'package:cocktail_challenge/data/presenter/login_presenter.dart';
import 'package:cocktail_challenge/utils/colors_util.dart';
import 'package:cocktail_challenge/utils/strings_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginPresenter>(
      builder: (__, _, ___) {
        return Form(
          key: _.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 36.0),
                child: Text(
                  StringsUtil.nameText,
                  style: TextStyle(
                    color: ColorsUtil.textColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 10.0),
                child: TextFormField(
                  controller: _.firstNameTextEditingController,
                  validator: (text) {
                    if(text != null) {
                      if(text.isEmpty) {
                        return StringsUtil.errorFormText;
                      }
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textInputAction: TextInputAction.next,
                  maxLength: 10,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorsUtil.loginContainerColor,
                    hintText: StringsUtil.nameHintText,
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: ColorsUtil.loginContainerColor
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    )
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 36.0),
                child: Text(
                  StringsUtil.lastNameText,
                  style: TextStyle(
                    color: ColorsUtil.textColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 10.0),
                child: TextFormField(
                  controller: _.lastNameTextEditingController,
                  validator: (text) {
                    if(text != null) {
                      if(text.isEmpty) {
                        return StringsUtil.errorFormText;
                      }
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLength: 10,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorsUtil.loginContainerColor,
                    hintText: StringsUtil.lastNameHintText,
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: ColorsUtil.loginContainerColor
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    )
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
