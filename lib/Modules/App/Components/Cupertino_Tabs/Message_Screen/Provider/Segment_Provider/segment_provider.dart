import 'package:flutter/cupertino.dart';
import 'package:platform_convertor_11/Modules/App/Components/Cupertino_Tabs/Message_Screen/Model/Segment_Control_Model/segment_model.dart';

class Segment_Provider extends ChangeNotifier {
  Segment_Model segment_model = Segment_Model(selected_segment: 0);

  void changeVal({required int val}) {
    segment_model.selected_segment = val;
    notifyListeners();
  }
}
