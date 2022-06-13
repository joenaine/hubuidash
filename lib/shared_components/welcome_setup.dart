import 'package:flutter/material.dart';
import 'package:hubui/constans/theme.dart';
import 'package:hubui/domain/text_onsliding.dart';
import 'package:hubui/views/screens/dashboard_screen.dart';
import 'package:provider/provider.dart';

class WelcomeSetUpWidget extends StatelessWidget {
  const WelcomeSetUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashProvider = Provider.of<DashboardProvider>(context);
    int groupNumber = dashProvider.groupValue;
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Apptheme.grey.withOpacity(.15),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset('assets/icons/frend_logo.png', height: 48),
          const SizedBox(width: 29),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(onSlidingList[groupNumber][0], style: Apptheme.headline2),
              Text(
                onSlidingList[groupNumber][1],
                style: Apptheme.bodyText2,
              )
            ],
          )
        ],
      ),
    );
  }
}
