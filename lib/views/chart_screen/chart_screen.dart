import 'package:flutter/material.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_application_1/views/chart_screen/widgets/currency_orders_widget.dart';
import 'package:flutter_application_1/views/chart_screen/widgets/custom_stepper_widget.dart';
import 'package:flutter_application_1/widgets/dropdown_widget.dart';
import 'package:flutter_application_1/views/chart_screen/widgets/input_widget.dart';
import 'package:flutter_application_1/views/chart_screen/widgets/stock_value_widget.dart';
import 'package:flutter_application_1/widgets/segmented_control_widget.dart';
import 'package:flutter_application_1/widgets/tabbar_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_1/widgets/custom_checkbox_widget.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarWidget(
      child: SegmentedControlWidget(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            FittedBox(
                              child: SizedBox(
                                height: 40,
                                width: 200,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(
                                      Assets.images.align.path,
                                    ),
                                    Text(
                                      'BTC/USDT',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: CryptoTheme.white),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: CryptoTheme.lightGreen,
                                      ),
                                      height: 25,
                                      width: 60,
                                      alignment: Alignment.center,
                                      child: const Text(
                                        '+2.38%',
                                        style:
                                            TextStyle(color: CryptoTheme.green),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const InputWidget(
                              text: '43,805.35',
                              color: CryptoTheme.white,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const InputWidget(
                              text: 'Amount (BTC)',
                              color: CryptoTheme.grey,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const CustomStepper(),
                            const SizedBox(height: 5),
                            FittedBox(
                              child: Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: CryptoTheme.deepGrey,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Text(
                                  'Total (USDT)',
                                  style: TextStyle(
                                      fontSize: 14, color: CryptoTheme.grey),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            FittedBox(
                              child: Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 200,
                                child: Row(
                                  children: [
                                    const Text(
                                      'Avbl',
                                      style: TextStyle(color: CryptoTheme.grey),
                                    ),
                                    const Spacer(),
                                    const Text(
                                      '1000.00 USDT',
                                      style:
                                          TextStyle(color: CryptoTheme.white),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 3.0),
                                      child: SvgPicture.asset(
                                          Assets.images.plusRounded.path),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 40,
                              width: 200,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: CryptoTheme.green,
                                ),
                                child: const Text(
                                  'Buy BTC',
                                  style: TextStyle(color: CryptoTheme.white),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 4.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SvgPicture.asset(
                                      Assets.images.chartUpDown.path),
                                  IconButton(
                                    iconSize: 24,
                                    onPressed: () {},
                                    icon: const Icon(Icons.more_horiz_outlined),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 130,
                              child: StockValue(),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            SizedBox(
                              width: 117,
                              child: Row(
                                children: [
                                  const DropDownWidget(),
                                  SvgPicture.asset(
                                      Assets.images.tableSort.path),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 8),
                        child: Row(
                          children: [
                            TextButton(
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7)),
                                    backgroundColor: CryptoTheme.deepGrey),
                                onPressed: () {},
                                child: const Text(
                                  'Open Orders (4)',
                                  style: TextStyle(color: CryptoTheme.white),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Funds',
                                  style: TextStyle(color: CryptoTheme.grey),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: SvgPicture.asset(Assets.images.list.path),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                        ),
                        child: Row(
                          children: [
                            CustomCheckboxW(
                                isChecked: true,
                                onChange: () {},
                                size: 14,
                                iconSize: 11,
                                selectedColor: CryptoTheme.blue,
                                selectedIconColor: CryptoTheme.white,
                                borderColor: CryptoTheme.blue,
                                checkIcon: Icon(
                                  Icons.check,
                                )),
                            const Text(
                              'Show all',
                              style: TextStyle(
                                color: CryptoTheme.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)),
                              backgroundColor: CryptoTheme.deepGrey),
                          onPressed: () {},
                          child: const Text(
                            'Cancel all',
                            style: TextStyle(color: CryptoTheme.white),
                          )),
                    )
                  ],
                ),
                CurrencyOrders(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
