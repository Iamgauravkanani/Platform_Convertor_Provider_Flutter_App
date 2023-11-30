import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../utils/Platform_Provider/Provider/platform_provider.dart';

class Cupertino_Screen extends StatelessWidget {
  const Cupertino_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.home),
        middle: Text("Home Screen"),
        trailing: CupertinoSwitch(
          value: Provider.of<PlatformProvider>(context, listen: true)
              .platform
              .isIos,
          onChanged: (val) {
            Provider.of<PlatformProvider>(context, listen: false)
                .changePlatform();
          },
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoActivityIndicator(
              radius: 30,
            ),
            CupertinoButton(child: Text("Cupertino Button"), onPressed: () {}),
            CupertinoButton.filled(
                child: Text("Cupertino Button"), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
