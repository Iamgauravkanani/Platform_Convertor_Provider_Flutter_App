import 'package:flutter/cupertino.dart';
import 'package:platform_convertor_11/Modules/App/Material_Screen/Models/BottomNavigationBar_Model/navigation_bar_model.dart';

class NavigationProvider extends ChangeNotifier {
  NavigationBarModel navigationBarModel = NavigationBarModel(selectedIndex: 0);
  PageController pageController = PageController();

  void changeNavigationBarIndex({required int index}) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 200), curve: Curves.linear);
    navigationBarModel.selectedIndex = index;
    notifyListeners();
  }
}
