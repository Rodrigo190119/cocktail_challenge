import 'package:cocktail_challenge/data/models/entities/cocktail_entity.dart';
import 'package:cocktail_challenge/data/models/response/response_cocktail_list_model.dart';
import 'package:cocktail_challenge/data/repository/home_repository.dart';
import 'package:cocktail_challenge/ui/views/cocktail/cocktail_view.dart';
import 'package:flutter/material.dart';

class HomePresenter extends ChangeNotifier {
  final HomeRepository _homeRepository = HomeRepository();

  List<Cocktail> _cocktailsList = [];
  List<Cocktail> get cocktailsList => _cocktailsList;

  int currentPage = 1;
  bool incomingCocktailEmpty = false;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final scrollController = ScrollController();

  void initScrollController() {
    scrollController.addListener(() {
      if (scrollController.offset == scrollController.position.maxScrollExtent) {
        getAllCocktails();
      }
    });
  }

  void disposeScrollController() {
    scrollController.dispose();
  }

  Future<void> getAllCocktails() async {
    ResponseCocktailList? responseCocktailsList = await _homeRepository.getAllCocktails();
    if(responseCocktailsList != null) {
      if(currentPage != 5) {
        currentPage++;
        _cocktailsList += responseCocktailsList.cocktails!;
      } else {
        incomingCocktailEmpty = true;
      }
      notifyListeners();
    }
  }

  VoidCallback navigateToCocktail(BuildContext context,
      {required String cocktailId}) {
    return () {
      Navigator.push(
       context,
       MaterialPageRoute(
         builder: (context) => CocktailView(cocktailId: cocktailId)));
    };
  }
}