import 'package:flutter/cupertino.dart';
import 'package:platform_convertor_11/Modules/App/Material_Screen/Models/Date_Picker_Model/date_picker_model.dart';

class DatePickerProvider extends ChangeNotifier {
  DatePicker datePicker = DatePicker(date: DateTime.now());

  void pickDate({required DateTime datetime}) {
    datePicker.date = datetime;
    notifyListeners();
  }
}
