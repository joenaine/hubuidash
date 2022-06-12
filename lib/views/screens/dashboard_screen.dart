library dashboard;

import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hubui/constans/app_constants.dart';
import 'package:hubui/constans/theme.dart';
import 'package:hubui/domain/visitor_card_list.dart';
import 'package:hubui/shared_components/business_setup.dart';
import 'package:hubui/shared_components/sliding_center_menu.dart';
import 'package:hubui/shared_components/responsive_builder.dart';
import 'package:hubui/shared_components/sidebar_icons.dart';
import 'package:hubui/shared_components/sliding_right_menu.dart';
import 'package:hubui/shared_components/welcome_setup.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'package:provider/provider.dart';

part '../../provider/dashboard_provider.dart';

// model

// component
part '../components/bottom_navbar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashProvider = Provider.of<DashboardProvider>(context);
    return Scaffold(
      key: dashProvider.scafoldKey,
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: ResponsiveBuilder.isDesktop(context)
          ? null
          : Drawer(
              child: SafeArea(
                child: SingleChildScrollView(child: _buildSidebar(context)),
              ),
            ),
      bottomNavigationBar: (ResponsiveBuilder.isDesktop(context) || kIsWeb)
          ? null
          : const _BottomNavbar(),
      body: SafeArea(
        child: ResponsiveBuilder(
          mobileBuilder: (context, constraints) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildCenterContent(
                    onPressedMenu: () => dashProvider.openDrawer(),
                  ),
                  _buildRightContent(),
                ],
              ),
            );
          },
          tabletBuilder: (context, constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: constraints.maxWidth > 800 ? 8 : 7,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: _buildCenterContent(
                      onPressedMenu: () => dashProvider.openDrawer(),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: const VerticalDivider(),
                ),
                Flexible(
                  flex: 4,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: _buildRightContent(),
                  ),
                ),
              ],
            );
          },
          desktopBuilder: (context, constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: constraints.maxWidth > 1350 ? 3 : 4,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: _buildSidebar(context),
                  ),
                ),
                Flexible(
                  flex: constraints.maxWidth > 1350 ? 10 : 9,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: _buildCenterContent(),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: const VerticalDivider(thickness: 2),
                ),
                Flexible(
                  flex: 4,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: _buildRightContent(),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildSidebar(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(blurRadius: 4, color: Colors.grey),
          BoxShadow(
            color: Colors.white,
            offset: Offset(0, -16),
          ),
          BoxShadow(color: Colors.white, offset: Offset(0, 16)),
          BoxShadow(color: Colors.white, offset: Offset(-16, -16)),
          BoxShadow(color: Colors.white, offset: Offset(-16, 16)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 27, top: 21, bottom: 18, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Business Name',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SvgPicture.asset('assets/icons/drop_down.svg'),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 27, top: 30, bottom: 10),
            child: Text(
              'O R G A N I Z A T I O N',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontFamily: Font.avenir, fontWeight: FontWeight.w100),
            ),
          ),
          const SidebarMenuIcons(),
          const Spacer(),
          const Divider(),
          ListTile(
            leading: const CircleAvatar(
                radius: 17,
                backgroundImage:
                    AssetImage('assets/images/people/iiro_kankka.png')),
            title: const Text(
              'Eichie Onosedeba',
              style: Apptheme.headline1,
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Apptheme.actionBlue,
                )),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildCenterContent({Function()? onPressedMenu}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      child: Column(
        children: [
          const SizedBox(height: kSpacing + 15),
          Row(
            children: [
              if (onPressedMenu != null)
                Padding(
                  padding: const EdgeInsets.only(right: kSpacing / 2),
                  child: IconButton(
                    onPressed: onPressedMenu,
                    icon: const Icon(Icons.menu),
                  ),
                ),
            ],
          ),
          const SlidingCenterMenu(),
          const SizedBox(height: 60),
          const WelcomeSetUpWidget(),
          Row(
            children: visitorCardList.map((item) {
              return Container(
                margin: const EdgeInsets.only(top: 22, right: 13),
                width: 141,
                height: 186,
                padding: const EdgeInsets.symmetric(
                  vertical: 25,
                ),
                decoration: BoxDecoration(
                    color: Apptheme.white,
                    borderRadius: BorderRadius.circular(kBorderRadius)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.text,
                      style:
                          Apptheme.subtitle2.copyWith(fontFamily: Font.avenir),
                    ),
                    const SizedBox.square(),
                    CircularPercentIndicator(
                      backgroundColor: Apptheme.percentColor,
                      lineWidth: 3,
                      radius: 40,
                      center: Text(
                        '${item.percent * 100}' '%',
                        style: Apptheme.headline2,
                      ),
                    ),
                    const SizedBox.square(),
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildRightContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: kSpacing + 15),
          SlidingRightMenu(),
          SizedBox(height: kSpacing + 30),
          BusinessSetupWidget(),
        ],
      ),
    );
  }
}
