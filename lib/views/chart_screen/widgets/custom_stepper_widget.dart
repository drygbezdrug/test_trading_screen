import 'package:flutter/material.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 200,
      child: FittedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.images.stepCompleted.path),
            Container(width: 32, height: 2, color: CryptoTheme.deepGrey),
            const SizedBox(
              width: 3,
            ),
            Container(
              height: 10,
              width: 5,
              decoration: BoxDecoration(
                color: CryptoTheme.deepGrey,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            Container(width: 32, height: 2, color: CryptoTheme.deepGrey),
            const SizedBox(
              width: 3,
            ),
            Container(
              height: 10,
              width: 5,
              decoration: BoxDecoration(
                color: CryptoTheme.deepGrey,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            Container(width: 32, height: 2, color: CryptoTheme.deepGrey),
            const SizedBox(
              width: 3,
            ),
            Container(
              height: 10,
              width: 5,
              decoration: BoxDecoration(
                color: CryptoTheme.deepGrey,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            Container(width: 32, height: 2, color: CryptoTheme.deepGrey),
            const SizedBox(
              width: 3,
            ),
            Container(
              height: 10,
              width: 5,
              decoration: BoxDecoration(
                color: CryptoTheme.deepGrey,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
