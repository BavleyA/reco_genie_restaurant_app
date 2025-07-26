import 'package:flutter/material.dart';
import 'package:reco_genie_restaurant_app/features/authentication/domain/login_user.dart';

import '../../../../SharedConfig/routes/app_routes.dart';
import '../../../../core/constants/app_strings.dart';

class ElevatedAuthButton extends StatelessWidget {
  const ElevatedAuthButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.dark,
    required this.text, required this.email, required this.password,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final bool dark;
  final String text;
  final String email;
  final String password;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: (){
            if(_formKey.currentState!.validate()){
              loginUser(email: email, password: password);
              Navigator.pushReplacementNamed(context, RouteManager.home);
            }
          },
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: dark ? Colors.black : Colors.white,
            ),
          )),
    );
  }
}

