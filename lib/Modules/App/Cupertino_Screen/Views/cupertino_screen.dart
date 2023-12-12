import 'package:flutter/cupertino.dart';
import 'package:platform_convertor_11/Modules/App/Components/Cupertino_Tabs/Call_Screen/Views/call_screen.dart';
import 'package:platform_convertor_11/Modules/App/Components/Cupertino_Tabs/Message_Screen/Views/message_screen.dart';

import 'package:platform_convertor_11/Modules/App/Components/Cupertino_Tabs/Sliver_Screen/Views/cupertino_sliver_screen.dart';

class Cupertino_Screen extends StatelessWidget {
  Cupertino_Screen({super.key});
  List<Widget> pages = [
    Call_Screen(),
    Message_Screen(),
    CupertinoSliverScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.phone), label: "Call"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble), label: "Message"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.list_bullet_below_rectangle),
                label: "Slivers"),
          ],
        ),
        tabBuilder: (ctx, i) {
          return CupertinoTabView(builder: (ctx) => pages[i]);
        });
  }
}
