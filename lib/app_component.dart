import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:angular2_quickstart/dashboard_component.dart';
import 'package:angular2_quickstart/heroes_component.dart';
import 'package:angular2_quickstart/hero_service.dart';

@Component(
    selector: 'my-app',
    template: '''
    <h1>{{title}}</h1>
    <nav>
      <a [routerLink]="['Heroes']">Heroes</a>
      <a [routerLink]="['Dashboard']">Dashboard</a>
    </nav>
    <router-outlet></router-outlet>
    ''',
    directives: const [ROUTER_DIRECTIVES],
    providers: const [HeroService, ROUTER_PROVIDERS]
)
@RouteConfig(const [
  const Route(
    path: '/heroes',
    name: 'Heroes',
    component: HeroesComponent
  ),
  const Route(
    path: '/dashboard',
    name: 'Dashboard',
    component: DashboardComponent
  )
])
class AppComponent {
  String title = 'Tour of Heroes';
}
