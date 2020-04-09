class Planets {
  String name, climate, terrain, gravity, population;
  int diameter;

  Planets(
      {this.name,
      this.climate,
      this.diameter,
      this.gravity,
      this.population,
      this.terrain});

  Planets.fromMap(Map<String, dynamic> map) {
    name = map['name'];
    climate = map['climate'];
    diameter = map['diameter'];
    gravity = map['gravity'];
    population = map['population'];
    terrain = map['terrain'];
  }
}
