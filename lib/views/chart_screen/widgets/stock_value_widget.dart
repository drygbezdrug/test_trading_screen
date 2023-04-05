import 'package:flutter/material.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StockValue extends StatelessWidget {
  const StockValue({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 76,
          width: 100,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: SvgPicture.asset(Assets.images.ladderRed.path),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: _val1.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final element = _val1[index];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        element['price'],
                        style: const TextStyle(
                            fontSize: 11, color: CryptoTheme.red),
                      ),
                      Text(element['amount'],
                          style: const TextStyle(
                              fontSize: 11, color: CryptoTheme.white)),
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
              fontSize: 14,
              color: CryptoTheme.green,
            ),
          ),
          subtitle: Text(
            '~\$43,810.58',
            style: TextStyle(
              fontSize: 10,
              color: CryptoTheme.grey,
            ),
          ),
        ),
        SizedBox(
          height: 71,
          width: 100,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: SvgPicture.asset(Assets.images.ladderGreen.path),
              ),
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
                        style: const TextStyle(
                            fontSize: 11, color: CryptoTheme.green),
                      ),
                      Text(
                        element['amount'],
                        style: const TextStyle(
                          fontSize: 11,
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
