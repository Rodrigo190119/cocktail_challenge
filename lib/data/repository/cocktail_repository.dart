import 'dart:convert';

import 'package:cocktail_challenge/data/models/response/response_cocktail_model.dart';
import 'package:cocktail_challenge/data/services/cocktail_services.dart';

class CocktailRepository {
  final CocktailServices _cocktailServices = CocktailServices();

  Future<ResponseCocktail?> getCocktailById({required String cocktailId}) async {
    try {
      final response = await _cocktailServices.getCocktailById(cocktailId: cocktailId);
      return ResponseCocktail.fromJson(json.decode(response.body));
    } catch (_) { return null; }
  }
}