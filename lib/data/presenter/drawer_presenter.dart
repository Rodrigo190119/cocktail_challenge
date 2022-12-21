import 'package:cocktail_challenge/data/models/entities/cocktail_entity.dart';
import 'package:cocktail_challenge/data/models/response/response_cocktail_model.dart';
import 'package:cocktail_challenge/data/repository/drawer_repository.dart';
import 'package:cocktail_challenge/ui/views/cocktail/cocktail_view.dart';
import 'package:flutter/material.dart';

class DrawerPresenter extends ChangeNotifier {
  final DrawerRepository _drawerRepository = DrawerRepository();

  Cocktail? randomCocktail;

  void clearRandomCocktail() {
    randomCocktail = null;
  }

  void getRandomCocktailAndNavigateToResult(BuildContext context) async {
    getRandomCocktail().whenComplete((){
      if(randomCocktail != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CocktailView(
                cocktailId: randomCocktail!.id!)));
      }
    });
  }

  Future<void> getRandomCocktail() async {
    clearRandomCocktail();
    ResponseCocktail? responseCocktail
      = await _drawerRepository.getRandomCocktail();
    if(responseCocktail != null) {
      randomCocktail = responseCocktail.cocktail;
      notifyListeners();
    }
  }
}