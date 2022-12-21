import 'package:cocktail_challenge/data/models/entities/cocktail_entity.dart';
import 'package:cocktail_challenge/data/models/entities/ingredient_entity.dart';
import 'package:cocktail_challenge/data/models/entities/measure_entity.dart';
import 'package:cocktail_challenge/data/models/response/response_cocktail_model.dart';
import 'package:cocktail_challenge/data/repository/cocktail_repository.dart';
import 'package:cocktail_challenge/ui/views/cocktail/widgets/coming_soon_dialog.dart';
import 'package:flutter/material.dart';

class CocktailPresenter extends ChangeNotifier {
  final CocktailRepository _cocktailRepository = CocktailRepository();

  Cocktail? selectedCocktail;

  String get cocktailId => selectedCocktail?.id ?? '1';

  String get cocktailName => selectedCocktail?.name ?? ''; //

  String get cocktailCategory => selectedCocktail?.category ?? '';//

  String get cocktailAlcoholic => selectedCocktail?.alcoholic ?? ''; //

  String get cocktailGlassType => selectedCocktail?.glassType ?? ''; //

  String get cocktailInstructions => selectedCocktail?.instructions ?? ''; //

  String get cocktailImage => selectedCocktail?.image ?? 'Error'; //

  Ingredient get cocktailIngredients => selectedCocktail?.ingredientsList ?? Ingredient.empty();

  Measure get cocktailMeasures => selectedCocktail?.measuresList ?? Measure.empty();

  int selectedCocktailLikes = 0;

  bool isFavorite = false;

  void clearSelectedCocktail() {
    selectedCocktail = null;
  }

  void clearSelectedCocktailVariables() {
    selectedCocktailLikes = 0;
    isFavorite = false;
  }

  void changeFavoriteStatus(){
    isFavorite = !isFavorite;
    if(isFavorite) {
      selectedCocktailLikes++;
    } else {
      if(selectedCocktailLikes != 0) selectedCocktailLikes--;
    }
    notifyListeners();
  }

  void showComingSoonDialog({required BuildContext context}) async {
    showDialog<void>(
      barrierDismissible: true,
      context: context,
      builder: (context) => const ComingSoonDialog()
    );
  }

  Future<void> getCocktailById({required String cocktailId}) async {
    clearSelectedCocktail();
    clearSelectedCocktailVariables();
    ResponseCocktail? responseCocktail
      = await _cocktailRepository.getCocktailById(cocktailId: cocktailId);
    if(responseCocktail != null) {
      selectedCocktail = responseCocktail.cocktail;
      notifyListeners();
    }
  }
}