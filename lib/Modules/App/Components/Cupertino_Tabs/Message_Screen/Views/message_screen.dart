import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../../../utils/Platform_Provider/Provider/platform_provider.dart';
import '../../../../Material_Screen/Providers/Date_Picker_Provider/date_picker_provider.dart';
import '../Provider/Segment_Provider/segment_provider.dart';

class Message_Screen extends StatelessWidget {
  const Message_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime datetime =
        Provider.of<DatePickerProvider>(context, listen: true).datePicker.date;
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
            CupertinoButton.filled(
                child: const Text("Time Picker"),
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
                          mode: CupertinoDatePickerMode.time,
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
            Text("${datetime.day}/${datetime.month}/${datetime.year}"),
            Text("${datetime.hour} : ${datetime.minute}"),
            const SizedBox(
              height: 10,
            ),
            CupertinoSlidingSegmentedControl(
              thumbColor: CupertinoColors.destructiveRed,
              backgroundColor: CupertinoColors.activeGreen,
              groupValue: Provider.of<Segment_Provider>(context, listen: true)
                  .segment_model
                  .selected_segment,
              children: const <int, Widget>{
                0: Center(child: Text("Red")),
                1: Center(child: Text("Blue")),
                2: Center(child: Text("Green")),
              },
              onValueChanged: (val) {
                Provider.of<Segment_Provider>(context, listen: false)
                    .changeVal(val: val!);
              },
            )
          ],
        ),
      ),
    );
  }
}
