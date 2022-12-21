import 'package:cocktail_challenge/data/models/entities/ingredient_entity.dart';
import 'package:cocktail_challenge/data/models/entities/measure_entity.dart';

class Cocktail {
  String? id;
  String? name;
  String? category;
  String? alcoholic;
  String? glassType;
  String? instructions;
  String? image;
  Ingredient? ingredientsList;
  Measure? measuresList;

  Cocktail({
    this.id,
    this.name,
    this.category,
    this.alcoholic,
    this.glassType,
    this.instructions,
    this.image,
    this.ingredientsList,
    this.measuresList,
  });

  factory Cocktail.fromJson(Map<String, dynamic> json) {
    return Cocktail(
      id: json['idDrink'],
      name: json['strDrink'],
      category: json['strCategory'],
      alcoholic: json['strAlcoholic'],
      glassType: json['strGlass'],
      instructions: json['strInstructions'],
      image: json['strDrinkThumb'],
      ingredientsList: Ingredient.fromJson(json),
      measuresList: Measure.fromJson(json),
    );
  }
}