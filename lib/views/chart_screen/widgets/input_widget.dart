import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({super.key, required this.text, required this.color});
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: CryptoTheme.deepGrey,
      ),
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
    );
  }
}
