import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../utils/Platform_Provider/Provider/platform_provider.dart';

class Call_Screen extends StatelessWidget {
  Call_Screen({super.key});
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            TextButton(
                onPressed: () {
                  scaffoldKey.currentState?.showBottomSheet(
                    (context) => Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.camera),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.photo),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: const Text("Show Bottom Sheet")),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (ctx) => Container(
                    height: 200,
                    width: double.infinity,
                  ),
                );
              },
              child: const Text("Show Modal BottomSheet"),
            ),
          ],
        ),
      ),
    );
  }
}
