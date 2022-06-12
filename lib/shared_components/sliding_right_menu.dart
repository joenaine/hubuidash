import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hubui/constans/theme.dart';

class SlidingRightMenu extends StatefulWidget {
  const SlidingRightMenu({Key? key}) : super(key: key);

  @override
  State<SlidingRightMenu> createState() => _SlidingRightMenuState();
}

class _SlidingRightMenuState extends State<SlidingRightMenu> {
  int? groupvalue = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoSlidingSegmentedControl<int>(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      backgroundColor: Apptheme.grey.withOpacity(.15),
      thumbColor: Apptheme.black,
      groupValue: groupvalue,
      children: {
        0: buildSegment('Info', 0),
        1: buildSegment('Details', 1),
        2: buildSegment('Partner', 2),
      },
      onValueChanged: (groupvalue) {
        setState(() => this.groupvalue = groupvalue);
      },
    );
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
