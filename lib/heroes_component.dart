import 'dart:async';
import 'package:angular2/core.dart';

import 'package:angular2/router.dart';
import 'package:angular2_quickstart/hero.dart';
import 'package:angular2_quickstart/hero_service.dart';

@Component(
    selector: 'my-heroes',
    templateUrl: 'heroes_component.html',
    styleUrls: const ['heroes_component.css'])
class HeroesComponent implements OnInit {
  List<Hero> heroes;
  Hero selectedHero;
  final HeroService _heroService;
  final Router _router;

  HeroesComponent(this._heroService, this._router);

  Future getHeroes() async {
    heroes = await _heroService.getHeroes();
  }

  void onSelect(Hero hero) {
    selectedHero = hero;
  }

  void ngOnInit() {
    getHeroes();
  }

  void goToDetail() {
    var link = [
      'HeroDetail',
      {'id': selectedHero.id.toString()}
    ];
    _router.navigate(link);
  }
}
