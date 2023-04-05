import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key, required this.child});
  final Widget child;
  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      backgroundColor: CryptoTheme.darkGrey,
      tabBar: CupertinoTabBar(
        backgroundColor: CryptoTheme.darkGrey,
        currentIndex: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.images.home.path),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.images.markets.path),
            label: 'Markets',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.images.trade.path),
            label: 'Trade',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.images.wallet.path),
            label: 'Assets',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return widget.child;
          },
        );
      },
    );
  }
}
