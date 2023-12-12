import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../utils/Platform_Provider/Provider/platform_provider.dart';

class CupertinoSliverScreen extends StatelessWidget {
  const CupertinoSliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            middle: const Text("Cupertino"),
            leading: const Icon(CupertinoIcons.settings),
            largeTitle: const Text("Sliver Screen"),
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
          const SliverFillRemaining(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                  CupertinoListTile(
                    title: Text("Vrund Padariya"),
                    subtitle: Text("Flutter Developer"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Icon(CupertinoIcons.settings),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
