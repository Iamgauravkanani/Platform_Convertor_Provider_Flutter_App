import 'package:flutter/cupertino.dart';
import 'package:platform_convertor_11/Modules/utils/Platform_Provider/Models/platform_model.dart';

class PlatformProvider extends ChangeNotifier {
  Platform platform = Platform(isIos: false);

  void changePlatform() {
    platform.isIos = !platform.isIos;
    notifyListeners();
  }
}
