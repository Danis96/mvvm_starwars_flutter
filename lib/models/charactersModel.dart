class Character {
  String name, birthYear, gender, eyeColor;
  int height;

  Character(
      {this.name, this.birthYear, this.eyeColor, this.gender, this.height});

  Character.fromMap(Map<String, dynamic> map) {
    name = map['name'];
    birthYear = map['birth_year'];
    gender = map['gender'];
    height = map['height'];
    eyeColor = map['eye_color'];
  }
}
