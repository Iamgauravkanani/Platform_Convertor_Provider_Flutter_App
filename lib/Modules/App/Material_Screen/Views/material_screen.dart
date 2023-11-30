import 'dart:io';

import 'package:flutter/material.dart';
import 'package:platform_convertor_11/Modules/utils/Platform_Provider/Provider/platform_provider.dart';
import 'package:provider/provider.dart';

class Material_Screen extends StatelessWidget {
  const Material_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
        leading: Icon(Icons.home),
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
            if (Platform.isIOS) ...[
              Text("This is Ios"),
            ] else if (Platform.isAndroid) ...[
              Text("This is Android"),
            ] else if (Platform.isMacOS) ...[
              Text("This is Android"),
            ]
          ],
        ),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       CircularProgressIndicator(),
      //       TextButton(onPressed: () {}, child: Text("Text Button")),
      //       ElevatedButton(onPressed: () {}, child: Text("Material Button")),
      //     ],
      //   ),
      // ),
    );
  }
}
