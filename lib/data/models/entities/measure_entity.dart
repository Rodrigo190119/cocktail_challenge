class Measure {
  String? firstMeasure;
  String? secondMeasure;
  String? thirdMeasure;
  String? fourthMeasure;
  String? fifthMeasure;

  Measure({
    this.firstMeasure,
    this.secondMeasure,
    this.thirdMeasure,
    this.fourthMeasure,
    this.fifthMeasure,
  });

  bool canDisplayTitle(){
    if(firstMeasure != null || secondMeasure != null ||
        thirdMeasure != null || fourthMeasure != null ||
        fifthMeasure != null) {
      return true;
    }
    return false;
  }

  factory Measure.fromJson(Map<String, dynamic> json) {
    return Measure(
      firstMeasure: json['strMeasure1'],
      secondMeasure: json['strMeasure2'],
      thirdMeasure: json['strMeasure3'],
      fourthMeasure: json['strMeasure4'],
      fifthMeasure: json['strMeasure5'],
    );
  }

  factory Measure.empty() {
    return Measure(
      firstMeasure: 'No measure',
      secondMeasure: 'No measure',
      thirdMeasure: 'No measure',
      fourthMeasure: 'No measure',
      fifthMeasure: 'No measure',
    );
  }
}