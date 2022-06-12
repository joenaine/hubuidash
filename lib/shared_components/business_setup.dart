import 'package:flutter/material.dart';
import 'package:hubui/constans/app_constants.dart';
import 'package:hubui/constans/theme.dart';

class BusinessSetupWidget extends StatelessWidget {
  const BusinessSetupWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 188,
      padding: const EdgeInsets.only(top: 26, right: 20, bottom: 26, left: 25),
      decoration: BoxDecoration(
        color: Apptheme.businessSetupColor,
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'BUSINESS SETUP',
            style: Apptheme.subtitle1
                .copyWith(fontFamily: Font.avenir, fontSize: 12),
          ),
          Text(
            'Start by providing details about your business to the customer.',
            style: Apptheme.headline3.copyWith(fontFamily: Font.roboto),
            maxLines: 7,
          ),
          MaterialButton(
            onPressed: () {},
            padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 34),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kBorderRadius)),
            color: Apptheme.white,
            child: Text(
              'Lets Go',
              style: Apptheme.headline3
                  .copyWith(color: Apptheme.businessSetupColor),
            ),
          )
        ],
      ),
    );
  }
}
