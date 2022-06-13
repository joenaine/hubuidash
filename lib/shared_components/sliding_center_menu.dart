import 'package:flutter/cupertino.dart';
import 'package:hubui/constans/theme.dart';
import 'package:hubui/views/screens/dashboard_screen.dart';
import 'package:provider/provider.dart';

class SlidingCenterMenu extends StatelessWidget {
  const SlidingCenterMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashProvider = Provider.of<DashboardProvider>(context);

    return Container(
        alignment: Alignment.center,
        child: CupertinoSlidingSegmentedControl<int>(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
          backgroundColor: Apptheme.grey.withOpacity(.15),
          thumbColor: Apptheme.black,
          groupValue: dashProvider.groupValue,
          children: {
            0: buildSegment('Overview', 0, context),
            1: buildSegment('Facilities', 1, context),
            2: buildSegment('Statistics', 2, context),
            3: buildSegment('Management', 3, context),
            4: buildSegment('Reports', 4, context),
            5: buildSegment('Settings', 5, context),
          },
          onValueChanged: (groupvalue) {
            dashProvider.onSelectedSliding(groupvalue!);
          },
        ));
  }

  Widget buildSegment(String text, int index, BuildContext context) {
    final dashProvider = Provider.of<DashboardProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 7),
      child: Text(
        text,
        style: Apptheme.subtitle1.copyWith(
            color: index == dashProvider.groupValue
                ? Apptheme.white
                : Apptheme.black,
            fontSize: 13),
      ),
    );
  }
}
