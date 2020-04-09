
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:mvvmstarwars/interface/star_wars_api.dart';

class MockClient extends Mock implements http.Client {}
class MockSwapiService extends Mock implements StarWarsApi {}