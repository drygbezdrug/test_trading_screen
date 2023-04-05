// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/theme.dart';

enum Tabs { charts, trade }

class SegmentedControlWidget extends StatefulWidget {
  const SegmentedControlWidget({
    super.key,
  });

  @override
  State<SegmentedControlWidget> createState() => _SegmentedControlWidgetState();
}

Tabs _selectedSegment = Tabs.charts;

class _SegmentedControlWidgetState extends State<SegmentedControlWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CupertinoSlidingSegmentedControl<Tabs>(
        thumbColor: CryptoTheme.deepGrey,
        backgroundColor: CryptoTheme.deepDarkGrey,
        children: <Tabs, Widget>{
          Tabs.charts: SizedBox(
            width: 130,
            child: Text(
              Tabs.charts.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: _selectedSegment == Tabs.charts
                      ? CryptoTheme.white
                      : CryptoTheme.grey,
                  fontSize: 14),
            ),
          ),
          Tabs.trade: Text(
            Tabs.trade.name,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: _selectedSegment == Tabs.trade
                    ? CryptoTheme.white
                    : CryptoTheme.grey,
                fontSize: 14),
          ),
        },
        groupValue: _selectedSegment,
        onValueChanged: (Tabs? value) {
          if (value != null) {
            setState(
              () {
                _selectedSegment = value;
              },
            );
          }
        },
      ),
    );
  }
}
