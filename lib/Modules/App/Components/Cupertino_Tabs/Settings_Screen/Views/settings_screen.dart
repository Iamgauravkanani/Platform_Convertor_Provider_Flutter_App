import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../../../../../utils/Platform_Provider/Provider/platform_provider.dart';

class Settings_Screen extends StatelessWidget {
  const Settings_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: const Icon(CupertinoIcons.home),
        middle: const Text("Home Screen"),
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
      child: Center(child: Text("Hello I am Settings Screen")),
    );
  }
}
