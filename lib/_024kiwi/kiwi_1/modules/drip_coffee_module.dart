import 'package:flutter_ex/_024kiwi/kiwi_1/models/coffee_maker.dart';
import 'package:flutter_ex/_024kiwi/kiwi_1/models/electric_heater.dart';
import 'package:flutter_ex/_024kiwi/kiwi_1/models/heater.dart';
import 'package:flutter_ex/_024kiwi/kiwi_1/models/model.dart';
import 'package:flutter_ex/_024kiwi/kiwi_1/models/pump.dart';
import 'package:flutter_ex/_024kiwi/kiwi_1/models/thermosiphon.dart';

import 'package:kiwi/kiwi.dart';

part 'drip_coffee_module.g.dart';

abstract class CoffeeInjector {
  void configure() {
    _configureInstances();
    _configureFactories();
  }

  void _configureInstances() {
    Container container = Container();
    container.registerInstance(new Model('DartCoffee', 'DripCoffeeStandard'));
  }

  @Register.factory(PowerOutlet)
  @Register.singleton(Electricity)
  @Register.singleton(Heater, from: ElectricHeater)
  @Register.singleton(Pump, from: Thermosiphon)
  @Register.factory(CoffeeMaker)
  void _configureFactories();
}

CoffeeInjector getCoffeeInjector() => new _$CoffeeInjector();
