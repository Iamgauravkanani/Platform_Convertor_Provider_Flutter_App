class Slider_Model {
  double _slider_val;

  double get slider_val => _slider_val;

  set slider_val(double value) {
    _slider_val = value;
  }

  Slider_Model({required double slider_val}) : _slider_val = slider_val;
}
