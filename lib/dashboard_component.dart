import 'dart:async';
import 'package:angular2/core.dart';
import 'package:angular2_quickstart/hero.dart';
import 'package:angular2_quickstart/hero_service.dart';

@Component(
  selector: 'my-dashboard',
  templateUrl: 'dashboard_component.html'
)
class DashboardComponent implements OnInit {
  List<Hero> heroes;
  HeroService _heroService;

  DashboardComponent(this._heroService);

  Future<Null> ngOnInit() async {
    heroes = (await _heroService.getHeroes()).skip(1).take(4).toList();
  }

  goToDetail(Hero hero) {}
}