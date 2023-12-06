import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_convertor_11/Modules/App/Material_Screen/Providers/Date_Picker_Provider/date_picker_provider.dart';
import 'package:platform_convertor_11/Modules/App/Material_Screen/Providers/Time_Picker_Provider/time_picker_provider.dart';
import 'package:platform_convertor_11/Modules/utils/Platform_Provider/Provider/platform_provider.dart';
import 'package:provider/provider.dart';
import 'package:platform_convertor_11/Modules/App/Material_Screen/Views/material_screen.dart';
import 'Modules/App/Cupertino_Screen/Views/cupertino_screen.dart';
import 'Modules/App/Material_Screen/Providers/BottomNavigationBar_Provider/navigation_bar_provider.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          ListenableProvider(create: (ctx) => PlatformProvider()),
          ListenableProvider(create: (ctx) => DatePickerProvider()),
          ListenableProvider(create: (ctx) => TimePickerProvider()),
          ListenableProvider(create: (ctx) => NavigationProvider()),
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
