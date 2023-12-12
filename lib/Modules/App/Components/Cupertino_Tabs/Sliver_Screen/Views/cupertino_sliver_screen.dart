import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../utils/Platform_Provider/Provider/platform_provider.dart';
import 'package:flutter/src/widgets/framework.dart';

class CupertinoSliverScreen extends StatelessWidget {
  const CupertinoSliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
        SliverToBoxAdapter(
          child: CupertinoListSection(
            header: const Text("Employee Details"),
            children: <CupertinoListTile>[
              CupertinoListTile(
                onTap: () {},
                additionalInfo: const Text("Vrund is Fresher"),
                title: const Text("Vrund Padariya"),
                subtitle: const Text("Flutter Developer"),
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                trailing: const Icon(CupertinoIcons.settings),
              ),
              const CupertinoListTile(
                title: Text("Vrund Padariya"),
                subtitle: Text("Flutter Developer"),
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                trailing: Icon(CupertinoIcons.settings),
              ),
              const CupertinoListTile(
                title: Text("Vrund Padariya"),
                subtitle: Text("Flutter Developer"),
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                trailing: Icon(CupertinoIcons.settings),
              ),
              const CupertinoListTile(
                title: Text("Vrund Padariya"),
                subtitle: Text("Flutter Developer"),
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                trailing: Icon(CupertinoIcons.settings),
              ),
              const CupertinoListTile(
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
        // const SliverFillRemaining(
        //   child: SingleChildScrollView(
        //     child: Column(
        //       children: [
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //         CupertinoListTile(
        //           title: Text("Vrund Padariya"),
        //           subtitle: Text("Flutter Developer"),
        //           leading: CircleAvatar(
        //             backgroundColor: Colors.grey,
        //           ),
        //           trailing: Icon(CupertinoIcons.settings),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
