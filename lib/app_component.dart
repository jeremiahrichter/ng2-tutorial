import 'package:angular2/core.dart';
import 'package:angular2_quickstart/hero_component.dart';
import 'package:angular2_quickstart/hero_service.dart';

@Component(
    selector: 'my-app',
    template: '''
    <h1>{{title}}</h1>
    <my-heroes></my-heroes>
    ''',
    directives: const [HeroesComponent],
    providers: const [HeroService]
)
class AppComponent {
  String title = 'Tour of Heroes';
}