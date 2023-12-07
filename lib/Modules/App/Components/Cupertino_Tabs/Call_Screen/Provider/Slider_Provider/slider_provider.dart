import 'package:flutter/cupertino.dart';
import 'package:platform_convertor_11/Modules/App/Components/Cupertino_Tabs/Call_Screen/Model/Slider_Model/slider_model.dart';

mixin Slider_Provider implements ChangeNotifier {
  var _slider_model = Slider_Model(slider_val: 0);

  Slider_Model get slider_model => _slider_model;

  set slider_model(Slider_Model value) {
    _slider_model = value;
  }

  void changeSlider({required double val}) {
    slider_model.slider_val = val;
    notifyListeners();
  }
}
