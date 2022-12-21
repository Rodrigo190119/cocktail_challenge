import 'package:cocktail_challenge/data/presenter/drawer_presenter.dart';
import 'package:cocktail_challenge/utils/strings_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class RandomCocktailListTile extends StatelessWidget {
  const RandomCocktailListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DrawerPresenter>(
      builder: (__, _, ___) {
        return ListTile(
          leading: const FaIcon(FontAwesomeIcons.dice),
          title: const Text(StringsUtil.randomDrinkText),
          onTap: (){
            _.getRandomCocktailAndNavigateToResult(context);
          },
        );
      }
    );
  }
}
