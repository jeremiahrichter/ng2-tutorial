import 'package:angular2/core.dart';

@Component(
  selector: 'my-app',
  template: '''
    <h1>{{title}}</h1>
    <h2>{{hero.name}} details!</h2>
    <div><label>ID: </label>{{hero.id}}</div>
    <div>
        <label>Name: </label>
        <input [(ngModel)]="hero.name" placeholder="Name">
    </div>''',
)
class AppComponent {
  String title = 'Tour of Heroes';
  Hero hero = new Hero(1, 'Windstorm');
}

class Hero {
  final int id;
  String name;

  Hero(this.id, this.name);
}
