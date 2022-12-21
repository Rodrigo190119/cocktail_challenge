import 'dart:convert';

import 'package:cocktail_challenge/data/models/response/response_cocktail_list_model.dart';
import 'package:cocktail_challenge/data/services/home_services.dart';

class HomeRepository {
  final HomeServices _homeServices = HomeServices();

  Future<ResponseCocktailList?> getAllCocktails() async {
    try {
      final response = await _homeServices.getAllCocktails();
      return ResponseCocktailList.fromJson(json.decode(response.body));
    } catch (_) { return null; }
  }
}