import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hubui/constans/theme.dart';

class SlidingCenterMenu extends StatefulWidget {
  const SlidingCenterMenu({Key? key}) : super(key: key);

  @override
  State<SlidingCenterMenu> createState() => _SlidingCenterMenuState();
}

class _SlidingCenterMenuState extends State<SlidingCenterMenu> {
  int? groupvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: CupertinoSlidingSegmentedControl<int>(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
          backgroundColor: Apptheme.grey.withOpacity(.15),
          thumbColor: Apptheme.black,
          groupValue: groupvalue,
          children: {
            0: buildSegment('Overview', 0),
            1: buildSegment('Facilities', 1),
            2: buildSegment('Statistics', 2),
            3: buildSegment('Management', 3),
            4: buildSegment('Reports', 4),
            5: buildSegment('Settings', 5),
          },
          onValueChanged: (groupvalue) {
            setState(() => this.groupvalue = groupvalue);
          },
        ));
  }

  Widget buildSegment(String text, int index) => Container(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 7),
        child: Text(
          text,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
              color: index == groupvalue ? Apptheme.white : Apptheme.black,
              fontSize: 13),
        ),
      );
}
