// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:platform_convertor_11/Modules/App/Material_Screen/Providers/Date_Picker_Provider/date_picker_provider.dart';
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
              child: const Text("Cupertino Alert Dialogue"),
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (ctx) => CupertinoAlertDialog(
                    actions: [
                      CupertinoDialogAction(
                        onPressed: () {},
                        isDefaultAction: true,
                        child: const Text("Yes"),
                      ),
                      CupertinoDialogAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        isDestructiveAction: true,
                        child: const Text("No"),
                      ),
                    ],
                    title: const Text("Cupertino Alert Dialogue"),
                    content: const Text("Are you Sure to Leave the App?"),
                  ),
                );
              },
            ),
            CupertinoButton.filled(
                child: const Text("Date Picker"),
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
                      message: SizedBox(
                        height: 200,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          initialDateTime: Provider.of<DatePickerProvider>(
                                  context,
                                  listen: true)
                              .datePicker
                              .date,
                          onDateTimeChanged: (DateTime value) {
                            Provider.of<DatePickerProvider>(context,
                                    listen: false)
                                .pickDate(datetime: value);
                          },
                        ),
                      ),
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
                  ),
                ),
              ),
            ),
            Text(
                "${Provider.of<DatePickerProvider>(context, listen: true).datePicker.date.day}/"
                "${Provider.of<DatePickerProvider>(context, listen: true).datePicker.date.month}/"
                "${Provider.of<DatePickerProvider>(context, listen: true).datePicker.date.year}")
          ],
        ),
      ),
    );
  }
}
