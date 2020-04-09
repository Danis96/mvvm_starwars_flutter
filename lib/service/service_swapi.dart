import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mvvmstarwars/interface/star_wars_api.dart';
import 'package:mvvmstarwars/models/charactersModel.dart';
import 'package:mvvmstarwars/models/filmModel.dart';
import 'package:mvvmstarwars/models/planetsModel.dart';

class SwapiService implements StarWarsApi {
  /// url za api bazni
   final _baseUrl = 'https://swapi.co/api';
   http.Client _client = http.Client();

  /// setter za Client
   set client(http.Client value) => _client = value;

   static final SwapiService _internal = SwapiService.internal();
   factory SwapiService() => _internal;
   SwapiService.internal();


  /// implements first method of interface
   Future<List<Film>> getFilms() async {
      /// get response
      var response = await _client.get('$_baseUrl/films');

      if(response.statusCode == 200) {
        /// json decode
        var data = json.decode(response.body);

        List<dynamic> filmsData = data['results'];
        List<Film> films = filmsData.map((f) => Film.fromMap(f)).toList();

        return films;
      } else {
        throw Exception('Failed to get data');
      }
   }



   Future<List<Character>> getCharacters() async {

     var response = await _client.get('$_baseUrl/people');

     if(response.statusCode == 200) {
       var data = json.decode(response.body);

       List<dynamic> characterData = data['results'];
       List<Character> characters = characterData.map((f) => Character.fromMap(f)).toList();

       return characters;
     } else {
       throw Exception('Data failed to get');
     }
     
   }



   Future<List<Planets>> getPlanets() async {
      
      var response  = await _client.get('$_baseUrl/planets');

      if(response.statusCode == 200) {
        var data = json.decode(response.body);

        List<dynamic> planetsData = data['results'];
        List<Planets> planets = planetsData.map((f) => Planets.fromMap(f));

        return planets;
      } else {
        throw Exception('Data failed to get');
      }
   }
}