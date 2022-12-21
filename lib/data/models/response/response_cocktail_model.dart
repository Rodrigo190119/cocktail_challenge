import 'package:cocktail_challenge/data/models/entities/cocktail_entity.dart';

class ResponseCocktail {
  Cocktail? cocktail;

  ResponseCocktail({this.cocktail});

  factory ResponseCocktail.fromJson(Map<String, dynamic> json) {
    return ResponseCocktail(
      cocktail: Cocktail.fromJson(json['drinks'][0] ?? {})
    );
  }
}