
import 'package:flutter_ex/_024kiwi/kiwi_1/models/coffee_maker.dart';
import 'package:flutter_ex/_024kiwi/kiwi_1/modules/drip_coffee_module.dart';
import 'package:kiwi/kiwi.dart';

void main() {
  CoffeeInjector coffeeInjector = getCoffeeInjector();
  coffeeInjector.configure();

  Container container = Container();

  CoffeeMaker coffeeMaker = container<CoffeeMaker>();
  coffeeMaker.brew();
}
