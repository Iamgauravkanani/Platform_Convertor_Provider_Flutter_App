import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_convertor_11/Modules/utils/Platform_Provider/Provider/platform_provider.dart';
import 'package:provider/provider.dart';
import 'package:platform_convertor_11/Modules/App/Material_Screen/Views/material_screen.dart';

import 'Modules/App/Cupertino_Screen/Views/cupertino_screen.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          ListenableProvider<PlatformProvider>(
              create: (ctx) => PlatformProvider()),
        ],
        builder: (ctx, _) {
          return (Provider.of<PlatformProvider>(ctx, listen: true)
                      .platform
                      .isIos ==
                  false)
              ? MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(useMaterial3: true),
                  home: Material_Screen(),
                )
              : CupertinoApp(
                  debugShowCheckedModeBanner: false,
                  home: Cupertino_Screen(),
                );
        }),
  );
}
