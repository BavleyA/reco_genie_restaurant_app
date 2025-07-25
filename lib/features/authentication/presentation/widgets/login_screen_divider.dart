
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';

class LoginScreenDivider extends StatelessWidget {
  const LoginScreenDivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(color: dark ? AppColors.shadowLight : AppColors.borderDark,
            thickness: 0.5, endIndent: 10, indent: 10,),
        ),
        Text(AppStrings.orText,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: dark ? Colors.white : Colors.black,
          ),
        ),
        Flexible(
          child: Divider(color: dark ? AppColors.shadowLight : AppColors.borderDark,
            thickness: 0.5, endIndent: 10, indent: 10,),
        ),
      ],
    );
  }
}
