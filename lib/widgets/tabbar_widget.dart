// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      backgroundColor: CryptoTheme.darkGrey,
      tabBar: CupertinoTabBar(
        backgroundColor: CryptoTheme.darkGrey,
        currentIndex: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Assets.images.home.svg(color: CryptoTheme.blue),
            icon: SvgPicture.asset(Assets.images.home.path),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Assets.images.markets.svg(color: CryptoTheme.blue),
            icon: SvgPicture.asset(Assets.images.markets.path),
            label: 'Markets',
          ),
          BottomNavigationBarItem(
            activeIcon: Assets.images.trade.svg(color: CryptoTheme.blue),
            icon: SvgPicture.asset(Assets.images.trade.path),
            label: 'Trade',
          ),
          BottomNavigationBarItem(
            activeIcon: Assets.images.wallet.svg(color: CryptoTheme.blue),
            icon: SvgPicture.asset(Assets.images.wallet.path),
            label: 'Assets',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return child;
          },
        );
      },
    );
  }
}
