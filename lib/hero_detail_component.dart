import 'package:angular2/core.dart';
import 'package:angular2_quickstart/hero.dart';

@Component(
    selector: 'my-hero-detail',
    template: '''
  <div *ngIf="hero != null">
    <h2>{{hero.name}} details!</h2>
    <label>ID: </label>{{hero.id}}
    <label>Name: </label>
    <input [(ngModel)]="hero.name" placeholder="Name">
</div>
''')
class HeroDetailComponent {
  @Input()
  Hero hero;
}
