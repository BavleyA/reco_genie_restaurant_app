import 'package:flutter/material.dart';
import 'package:reco_genie_restaurant_app/SharedConfig/routes/app_routes.dart';

import '../../../../core/constants/app_strings.dart';

class OutlinedAuthButton extends StatelessWidget {
  const OutlinedAuthButton({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: (){
          Navigator.pushReplacementNamed(context, RouteManager.signUp);
        },
        child: Text(
          AppStrings.createAccountText,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: dark ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}