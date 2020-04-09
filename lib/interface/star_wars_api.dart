import 'package:mvvmstarwars/models/charactersModel.dart';
import 'package:mvvmstarwars/models/filmModel.dart';
import 'package:mvvmstarwars/models/planetsModel.dart';

abstract class StarWarsApi {
   Future<List<Film>> getFilms();
   Future<List<Character>> getCharacters();
   Future<List<Planets>> getPlanets();
   
}