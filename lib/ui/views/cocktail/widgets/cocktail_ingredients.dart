import 'package:cocktail_challenge/data/models/entities/ingredient_entity.dart';
import 'package:cocktail_challenge/utils/colors_util.dart';
import 'package:cocktail_challenge/utils/strings_util.dart';
import 'package:flutter/material.dart';

class CocktailIngredients extends StatelessWidget {
  final Ingredient cocktailIngredients;
  const CocktailIngredients({
    required this.cocktailIngredients,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15.0),
        Visibility(
          visible: cocktailIngredients.canDisplayTitle(),
          child: const Text(
            '${StringsUtil.ingredientsText}:',
            style: TextStyle(
              color: ColorsUtil.textColor,
              fontSize: 14.0,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
        Visibility(
          visible: cocktailIngredients.firstIngredient != null,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0, horizontal: 10.0
            ),
            child: Text(
              cocktailIngredients.firstIngredient.toString(),
              style: const TextStyle(
                color: ColorsUtil.textColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w300
              ),
            ),
          ),
        ),
        Visibility(
          visible: cocktailIngredients.secondIngredient != null,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0, horizontal: 10.0
            ),
            child: Text(
              cocktailIngredients.secondIngredient.toString(),
              style: const TextStyle(
                color: ColorsUtil.textColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w300
              ),
            ),
          ),
        ),
        Visibility(
          visible: cocktailIngredients.thirdIngredient != null,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0, horizontal: 10.0
            ),
            child: Text(
              cocktailIngredients.thirdIngredient.toString(),
              style: const TextStyle(
                color: ColorsUtil.textColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w300
              ),
            ),
          ),
        ),
        Visibility(
          visible: cocktailIngredients.fourthIngredient != null,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0, horizontal: 10.0
            ),
            child: Text(
              cocktailIngredients.fourthIngredient.toString(),
              style: const TextStyle(
                color: ColorsUtil.textColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w300
              ),
            ),
          ),
        ),
        Visibility(
          visible: cocktailIngredients.fifthIngredient != null,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0, horizontal: 10.0
            ),
            child: Text(
              cocktailIngredients.fifthIngredient.toString(),
              style: const TextStyle(
                color: ColorsUtil.textColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w300
              ),
            ),
          ),
        ),
      ],
    );
  }
}
