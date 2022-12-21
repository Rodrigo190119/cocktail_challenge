import 'package:cocktail_challenge/data/presenter/cocktail_presenter.dart';
import 'package:cocktail_challenge/ui/views/cocktail/widgets/cocktail_ingredients.dart';
import 'package:cocktail_challenge/ui/views/cocktail/widgets/cocktail_measures.dart';
import 'package:cocktail_challenge/utils/colors_util.dart';
import 'package:cocktail_challenge/utils/images_path_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CocktailBody extends StatelessWidget {
  const CocktailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CocktailPresenter>(
        builder: (__, _, ___) {
          return Expanded(
            child: Scrollbar(
              thumbVisibility: true,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 25.0, horizontal: 36
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _.cocktailName,
                        style: const TextStyle(
                            color: ColorsUtil.textColor,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(14.0),
                        child: Center(
                          child: FadeInImage.assetNetwork(
                            placeholder: ImagesPathUtil.loadingImage,
                            fit: BoxFit.contain,
                            image: _.cocktailImage,
                            imageErrorBuilder: (_, __, ___) {
                              return Image.asset(ImagesPathUtil.errorImage);
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          _.cocktailInstructions,
                          style: const TextStyle(
                              color: ColorsUtil.textColor,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Text(
                          '· ${_.cocktailCategory}',
                          style: const TextStyle(
                            color: ColorsUtil.textColor,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Text(
                          '· ${_.cocktailAlcoholic}',
                          style: const TextStyle(
                              color: ColorsUtil.textColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Text(
                          '· ${_.cocktailGlassType}',
                          style: const TextStyle(
                              color: ColorsUtil.textColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      CocktailIngredients(cocktailIngredients: _.cocktailIngredients),
                      CocktailMeasures(cocktailMeasures: _.cocktailMeasures)
                    ],
                  ),
                ),
              ),
            ),
          );
        }
    );
  }
}
