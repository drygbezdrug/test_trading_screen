import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({super.key, required this.text, required this.color});
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: CryptoTheme.deepGrey,
        ),
        height: 40,
        width: 200,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.remove_outlined),
            ),
            const Spacer(),
            FittedBox(
              child: Text(
                text,
                style: TextStyle(color: color),
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
