import 'package:flutter_ex/_024kiwi/kiwi_1/models/pump.dart';

import 'heater.dart';

class Thermosiphon implements Pump {
  final Heater _heater;

  Thermosiphon(this._heater);

  @override
  void pump() {
    if (_heater.isHot) {
      print('pumping water');
    }
  }
}
