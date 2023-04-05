import 'package:flutter/material.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StockValue extends StatelessWidget {
  const StockValue({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 70,
            child: Stack(
              children: [
                Positioned(
                    left: 40,
                    child: SvgPicture.asset(Assets.images.ladderRed.path)),
                ListView.builder(
                  shrinkWrap: false,
                  itemCount: _val1.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final element = _val1[index];
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          element['price'],
                          style: const TextStyle(color: CryptoTheme.red),
                        ),
                        Text(element['amount'],
                            style: const TextStyle(color: CryptoTheme.white)),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
          const ListTile(
            title: Text(
              '43,810.58',
              style: TextStyle(
                color: CryptoTheme.green,
              ),
            ),
            subtitle: Text(
              '~\$43,810.58',
              style: TextStyle(
                color: CryptoTheme.grey,
              ),
            ),
          ),
          SizedBox(
            height: 80,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Positioned(
                    left: 25,
                    child: SvgPicture.asset(Assets.images.ladderGreen.path)),
                ListView.builder(
                  shrinkWrap: false,
                  itemCount: _val2.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final element = _val2[index];
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          element['price'],
                          style: const TextStyle(color: CryptoTheme.green),
                        ),
                        Text(
                          element['amount'],
                          style: const TextStyle(
                            color: CryptoTheme.white,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List _val1 = [
  {'price': '43792', 'amount': '18,3K'},
  {'price': '43794', 'amount': '18,2K'},
  {'price': '43796', 'amount': '18,5K'},
  {'price': '43798', 'amount': '18,6K'},
  {'price': '43800', 'amount': '18,1K'},
  {'price': '43801', 'amount': '16,1K'},
];
List _val2 = [
  {'price': '43803', 'amount': '19,3K'},
  {'price': '43805', 'amount': '17,3K'},
  {'price': '43807', 'amount': '19,3K'},
  {'price': '43809', 'amount': '18,3K'},
  {'price': '43811', 'amount': '20,3K'},
  {'price': '43812', 'amount': '21,3K'},
];
