import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubui/constans/theme.dart';
import 'package:hubui/domain/sidebar_list.dart';
import 'package:hubui/views/screens/dashboard_screen.dart';
import 'package:provider/provider.dart';

class SidebarMenuIcons extends StatelessWidget {
  const SidebarMenuIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashProvider = Provider.of<DashboardProvider>(context);
    final selectedIndex = dashProvider.selectedIndex;
    return Column(
      children: sidebarList.asMap().entries.map((e) {
        final index = e.key;
        final data = e.value;

        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                Container(
                  width: 2,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: selectedIndex == index
                          ? Apptheme.actionBlue
                          : Colors.transparent),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        return dashProvider.onSelectedTaskMenu(index);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 12),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                              height: 20,
                              child: SvgPicture.asset(
                                data.icon,
                                color: selectedIndex == index
                                    ? Apptheme.actionBlue
                                    : Apptheme.black,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                                child: Text(
                              data.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                      color: selectedIndex == index
                                          ? Apptheme.actionBlue
                                          : Apptheme.black),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ));
      }).toList(),
    );
  }
}
