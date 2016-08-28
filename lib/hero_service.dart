import 'dart:async';
import 'package:angular2/core.dart';
import 'hero.dart';
import 'mock_heroes.dart';

@Injectable()
class HeroService {
  Future<List<Hero>> getHeroes() async => mockHeroes;
}
