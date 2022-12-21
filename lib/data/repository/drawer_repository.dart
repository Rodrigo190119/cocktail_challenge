import 'dart:convert';

import 'package:cocktail_challenge/data/models/response/response_cocktail_model.dart';
import 'package:cocktail_challenge/data/services/drawer_services.dart';

class DrawerRepository {
  final DrawerServices _drawerServices = DrawerServices();

  Future<ResponseCocktail?> getRandomCocktail() async {
    try {
      final response = await _drawerServices.getRandomCocktail();
      return ResponseCocktail.fromJson(json.decode(response.body));
    } catch (_) { return null; }
  }
}