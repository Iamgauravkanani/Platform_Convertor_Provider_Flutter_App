// ignore_for_file: must_be_immutable, use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:platform_convertor_11/Modules/App/Components/Material_PageView_Screens/Call_Screen/Views/call_screen.dart';
import 'package:platform_convertor_11/Modules/App/Components/Material_PageView_Screens/Message_Screen/Views/message_screen.dart';
import 'package:platform_convertor_11/Modules/App/Components/Material_PageView_Screens/Settings_Screen/Views/settings_screen.dart';
import 'package:platform_convertor_11/Modules/App/Material_Screen/Providers/BottomNavigationBar_Provider/navigation_bar_provider.dart';
import 'package:platform_convertor_11/Modules/utils/Platform_Provider/Provider/platform_provider.dart';
import 'package:provider/provider.dart';

class Material_Screen extends StatelessWidget {
  Material_Screen({super.key});
  List<Widget> pageList = [
    Call_Screen(),
    const Message_Screen(),
    const Settings_Screen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        iconSize: 24,
        selectedFontSize: 18,
        selectedItemColor: Colors.yellow,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        // fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        currentIndex: Provider.of<NavigationProvider>(context, listen: true)
            .navigationBarModel
            .selectedIndex,
        onTap: (val) {
          Provider.of<NavigationProvider>(context, listen: false)
              .changeNavigationBarIndex(index: val);
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: "call"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "message"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "settings"),
        ],
      ),
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
        leading: const Icon(Icons.home),
        actions: [
          Switch(
              value: Provider.of<PlatformProvider>(context, listen: true)
                  .platform
                  .isIos,
              onChanged: (val) {
                Provider.of<PlatformProvider>(context, listen: false)
                    .changePlatform();
              }),
        ],
      ),
      body: PageView(
        onPageChanged: (val) {
          Provider.of<NavigationProvider>(context, listen: false)
              .changeNavigationBarIndex(index: val);
        },
        controller: Provider.of<NavigationProvider>(context, listen: true)
            .pageController,
        children: pageList,
      ),
    );
  }
}
