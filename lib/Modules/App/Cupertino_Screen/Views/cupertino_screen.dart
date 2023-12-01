import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../utils/Platform_Provider/Provider/platform_provider.dart';

class Cupertino_Screen extends StatelessWidget {
  const Cupertino_Screen({super.key});

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
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CupertinoActivityIndicator(
              radius: 30,
            ),
            CupertinoButton(
                child: const Text("Cupertino Button"), onPressed: () {}),
            CupertinoButton.filled(
                child: const Text("Cupertino Button"),
                onPressed: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (ctx) => CupertinoActionSheet(
                      cancelButton: CupertinoActionSheetAction(
                        onPressed: () {},
                        isDestructiveAction: true,
                        child: const Text("Cancel"),
                      ),
                      title: const Text("Platform Convertor App"),
                      message: const Text(
                          "How is Your Experience After Using this App"),
                      actions: [
                        CupertinoActionSheetAction(
                          onPressed: () {},
                          isDefaultAction: true,
                          child: const Text("Good"),
                        ),
                        CupertinoActionSheetAction(
                          onPressed: () {},
                          isDestructiveAction: true,
                          child: const Text("Bad"),
                        ),
                        CupertinoActionSheetAction(
                          onPressed: () {},
                          child: const Text("Neutral"),
                        ),
                      ],
                    ),
                  );
                }),
            const SizedBox(
              height: 20,
            ),
            CupertinoContextMenu(
              actions: [
                CupertinoContextMenuAction(
                  onPressed: () {},
                  isDefaultAction: true,
                  child: const Text("Like"),
                ),
                const CupertinoContextMenuAction(
                  child: Text("Comment"),
                ),
                const CupertinoContextMenuAction(
                  isDestructiveAction: true,
                  child: Text("Share"),
                ),
              ],
              child: Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                      "https://files.worldwildlife.org/wwfcmsprod/images/Panda_in_Tree/hero_small/99i33zyc0l_Large_WW170579.jpg"),
                  fit: BoxFit.cover,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
