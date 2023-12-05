import 'package:flutter/material.dart';
import 'package:platform_convertor_11/Modules/App/Material_Screen/Models/Time_Picker_model/time_picker_model.dart';

class TimePickerProvider extends ChangeNotifier {
  TimePicker timePicker = TimePicker(time: TimeOfDay.now());

  void pickTime({required TimeOfDay pickedtime}) {
    timePicker.time = pickedtime;
    notifyListeners();
  }
}
