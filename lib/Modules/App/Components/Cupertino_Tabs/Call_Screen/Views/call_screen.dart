import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../../../utils/Platform_Provider/Provider/platform_provider.dart';
import '../../../../Material_Screen/Providers/Date_Picker_Provider/date_picker_provider.dart';

class Call_Screen extends StatelessWidget {
  const Call_Screen({super.key});

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
            SizedBox(
              height: 10,
            ),
            CupertinoButton.filled(
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
            SizedBox(
              height: 10,
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
                        child: const Text("cancel"),
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
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
