import 'package:cocktail_challenge/utils/colors_util.dart';
import 'package:cocktail_challenge/utils/strings_util.dart';
import 'package:flutter/material.dart';

class ComingSoonDialog extends StatelessWidget {
  const ComingSoonDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
      ),
      title: const Center(child: Text(StringsUtil.comingSoonTitle)),
      content: SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.70,
          child: const Center(child: Text(StringsUtil.comingSoonText))
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: ColorsUtil.mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40), // <-- Radius
            ),
          ),
          onPressed: (){
            Navigator.pop(context);
          },
          child: const Text(StringsUtil.goBackText),
        )
      ],
    );
  }
}