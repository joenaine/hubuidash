import 'package:flutter/material.dart';
import 'package:hubui/constans/theme.dart';

class WelcomeSetUpWidget extends StatelessWidget {
  const WelcomeSetUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            children: const [
              Text('Welcome, its great to have you (first name)',
                  style: Apptheme.headline2),
              Text(
                'Start by setting up your business',
                style: Apptheme.bodyText2,
              )
            ],
          )
        ],
      ),
    );
  }
}
