import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:intl/intl.dart';

class CurrencyOrders extends StatelessWidget {
  const CurrencyOrders({super.key, this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _mockdata.length,
      itemBuilder: (context, index) {
        final curPair = _mockdata[index];
        return Column(
          children: [
            const Divider(),
            ListTile(
              contentPadding: EdgeInsets.only(left: 16, right: 16),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Text(
                      '${curPair.title}/${curPair.pairTitle}  ',
                      style: const TextStyle(
                        color: CryptoTheme.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      '${curPair.type}/${curPair.action}',
                      style: TextStyle(
                        color: curPair.color,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Row(
                      children: [
                        const Text(
                          'Amount',
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          '${curPair.amount}',
                          style: const TextStyle(color: CryptoTheme.white),
                        ),
                        Text('/${curPair.curAmount}'),
                      ],
                    ),
                  ),
                  FittedBox(
                    child: Row(
                      children: [
                        const Text('Price'),
                        const SizedBox(
                          width: 36,
                        ),
                        Text(
                          '${curPair.price}',
                          style: const TextStyle(color: CryptoTheme.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              trailing: FittedBox(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        DateFormat('yyyy-MM-d HH:mm:ss').format(curPair.date),
                      ),
                      SizedBox(
                        height: 30,
                        width: 60,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                            backgroundColor: CryptoTheme.deepGrey,
                          ),
                          onPressed: () {},
                          child: const FittedBox(
                            child: Text(
                              'Cancel',
                              style: TextStyle(color: CryptoTheme.white),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        );
      },
    );
  }
}

class CurrencyEntity {
  final String id;
  final String title;
  final String pairTitle;
  final String type;
  final String action;
  final double amount;
  final double curAmount;
  final Color color;
  final double price;
  final DateTime date;

  CurrencyEntity(
      {required this.id,
      required this.title,
      required this.pairTitle,
      required this.type,
      required this.action,
      required this.amount,
      required this.curAmount,
      this.color = Colors.red,
      required this.price,
      required this.date});
}

final _mockdata = [
  CurrencyEntity(
    id: '1',
    title: 'TBCC',
    pairTitle: 'USDT',
    type: 'Limit',
    action: 'Sell',
    amount: 0.00,
    curAmount: 4407.32,
    color: CryptoTheme.red,
    price: 0.0673,
    date: DateTime.now(),
  ),
  CurrencyEntity(
    id: '2',
    title: 'BTC',
    pairTitle: 'USDT',
    type: 'Limit',
    action: 'Buy',
    color: CryptoTheme.green,
    amount: 0.00,
    curAmount: 0.32052105,
    price: 10626,
    date: DateTime.now(),
  ),
  CurrencyEntity(
    id: '2',
    title: 'BTC',
    pairTitle: 'USDT',
    type: 'Limit',
    action: 'Buy',
    color: CryptoTheme.green,
    amount: 0.00,
    curAmount: 0.32052105,
    price: 10626,
    date: DateTime.now(),
  )
];
