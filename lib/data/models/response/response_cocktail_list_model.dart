import 'package:cocktail_challenge/data/models/entities/cocktail_entity.dart';

class ResponseCocktailList {
  List<Cocktail>? cocktails;

  ResponseCocktailList({
    this.cocktails
  });

  factory ResponseCocktailList.fromJson(Map<String, dynamic> json) {
    List<Cocktail> cocktails = List.of((json['drinks'] ?? []) as List)
        .map((e) => Cocktail.fromJson(e)).toList();

    return ResponseCocktailList(
      cocktails: cocktails
    );
  }
}