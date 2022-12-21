import 'package:cocktail_challenge/data/models/entities/measure_entity.dart';
import 'package:cocktail_challenge/utils/colors_util.dart';
import 'package:cocktail_challenge/utils/strings_util.dart';
import 'package:flutter/material.dart';

class CocktailMeasures extends StatelessWidget {
  final Measure cocktailMeasures;
  const CocktailMeasures({
    required this.cocktailMeasures,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15.0),
        Visibility(
          visible: cocktailMeasures.canDisplayTitle(),
          child: const Text(
            '${StringsUtil.measuresText}:',
            style: TextStyle(
                color: ColorsUtil.textColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
        Visibility(
          visible: cocktailMeasures.firstMeasure != null,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 5.0, horizontal: 10.0
            ),
            child: Text(
              cocktailMeasures.firstMeasure.toString(),
              style: const TextStyle(
                  color: ColorsUtil.textColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300
              ),
            ),
          ),
        ),
        Visibility(
          visible: cocktailMeasures.secondMeasure != null,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 5.0, horizontal: 10.0
            ),
            child: Text(
              cocktailMeasures.secondMeasure.toString(),
              style: const TextStyle(
                  color: ColorsUtil.textColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300
              ),
            ),
          ),
        ),
        Visibility(
          visible: cocktailMeasures.thirdMeasure != null,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 5.0, horizontal: 10.0
            ),
            child: Text(
              cocktailMeasures.thirdMeasure.toString(),
              style: const TextStyle(
                  color: ColorsUtil.textColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300
              ),
            ),
          ),
        ),
        Visibility(
          visible: cocktailMeasures.fourthMeasure != null,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 5.0, horizontal: 10.0
            ),
            child: Text(
              cocktailMeasures.fourthMeasure.toString(),
              style: const TextStyle(
                  color: ColorsUtil.textColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300
              ),
            ),
          ),
        ),
        Visibility(
          visible: cocktailMeasures.fifthMeasure != null,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 5.0, horizontal: 10.0
            ),
            child: Text(
              cocktailMeasures.fifthMeasure.toString(),
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
