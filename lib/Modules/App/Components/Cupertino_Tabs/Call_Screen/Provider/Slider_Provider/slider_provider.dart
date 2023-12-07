import 'package:flutter/cupertino.dart';
import 'package:platform_convertor_11/Modules/App/Components/Cupertino_Tabs/Call_Screen/Model/Slider_Model/slider_model.dart';

class Slider_Provider extends ChangeNotifier {
  Slider_Model slider_model = Slider_Model(slider_val: 0);

  void changeSlider({required double val}) {
    slider_model.slider_val = val;
    notifyListeners();
  }
}
