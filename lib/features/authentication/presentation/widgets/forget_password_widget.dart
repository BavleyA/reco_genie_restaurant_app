import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            child: Center(
              child: Text(AppStrings.forgotPasswordText,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: dark ? Colors.white : Colors.black,
                  decorationThickness: 2,
                  decoration: TextDecoration.underline,
                  height: 3,
                ),
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}