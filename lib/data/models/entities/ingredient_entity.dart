class Ingredient{
  String? firstIngredient;
  String? secondIngredient;
  String? thirdIngredient;
  String? fourthIngredient;
  String? fifthIngredient;

  Ingredient({
    this.firstIngredient,
    this.secondIngredient,
    this.thirdIngredient,
    this.fourthIngredient,
    this.fifthIngredient,
  });

  bool canDisplayTitle(){
    if(firstIngredient != null || secondIngredient != null ||
       thirdIngredient != null || fourthIngredient != null ||
       fifthIngredient != null) {
      return true;
    }
    return false;
  }

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(
      firstIngredient: json['strIngredient1'],
      secondIngredient: json['strIngredient2'],
      thirdIngredient: json['strIngredient3'],
      fourthIngredient: json['strIngredient4'],
      fifthIngredient: json['strIngredient5'],
    );
  }

  factory Ingredient.empty() {
    return Ingredient(
      firstIngredient: '',
      secondIngredient: '',
      thirdIngredient: '',
      fourthIngredient: '',
      fifthIngredient: '',
    );
  }
}