import 'package:flutter_ex/_024kiwi/kiwi_1/models/pump.dart';

import 'heater.dart';
import 'model.dart';

class CoffeeMaker {
  final Heater _heater;
  final Pump _pump;
  final Model _model;

  CoffeeMaker(
    this._heater,
    this._pump,
    this._model,
  );

  void brew() {
    _heater.on();
    _pump.pump();
    print(' [_]P coffee! [_]P');
    print(' Thanks for using $_model');
    _heater.off();
  }
}
