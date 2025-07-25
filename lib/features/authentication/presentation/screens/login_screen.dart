import 'package:flutter/material.dart';
import 'package:reco_genie_restaurant_app/core/constants/app_colors.dart';
import 'package:reco_genie_restaurant_app/core/constants/app_sizes.dart';
import 'package:reco_genie_restaurant_app/core/utils/validators.dart';
import 'package:reco_genie_restaurant_app/features/authentication/presentation/widgets/custom_auth_text_form_field.dart';

import '../../../../core/constants/app_image_strings.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_style.dart';
import '../../../../core/constants/app_text_style.dart';
import '../../../../core/constants/app_text_style.dart';
import '../../../../core/utils/helper.dart';
import '../widgets/login_screen_divider.dart';
import '../widgets/social_login_icons.dart';

class LoginScreen extends StatefulWidget {



  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {

    final dark = Helper.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: AppSizes.appBarHeight,
            left: AppSizes.defaultSpacing,
            right: AppSizes.defaultSpacing,
            bottom: AppSizes.defaultSpacing,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   AppStrings.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium
                  ),

                  const SizedBox(height: AppSizes.sizedBoxHeightSm),

                  Text(
                    AppStrings.loginSubtitle,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),

                  const SizedBox(height: AppSizes.sizedBoxHeightLg),

                ],
              ),

              Form(
                key: _formKey,
                  child: Column(
                    children: [
                      CustomAuthTextFormField(
                          label: AppStrings.emailLabel,
                          onChanged: (value){},
                          validator: (value) => Validator.validateEmail(value),
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          icon: Icons.email_outlined
                      ),

                      const SizedBox(height: AppSizes.sizedBoxHeightMd,),

                      CustomAuthTextFormField(
                          label: AppStrings.passwordLabel,
                          onChanged: (value){},
                          validator: (value) => Validator.validatePassword(value),
                          controller: passwordController,
                          obscureText: isPassword,
                          icon: Icons.lock_outline,
                          suffixIcon: isPassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                      ),
                      const SizedBox(height: AppSizes.sizedBoxHeightSm,),

                      Row(
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
                      ),

                      const SizedBox(height: AppSizes.sizedBoxHeightMd,),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: (){
                              _formKey.currentState?.validate();
                            },
                            child: Text(
                              AppStrings.loginButtonText,
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                color: dark ? Colors.black : Colors.white,
                              ),
                            )),
                      ),

                      const SizedBox(height: AppSizes.sizedBoxHeightSm,),

                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: (){},
                            child: Text(
                              AppStrings.createAccountText,
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                color: dark ? Colors.white : Colors.black,
                              ),
                            ),
                        ),
                      ),

                    ],

                  ),
              ),

              const SizedBox(height: AppSizes.sizedBoxWidthLg,),

              LoginScreenDivider(dark: dark),

              const SizedBox(height: AppSizes.sizedBoxHeightMd,),

              const SocialLoginIcons(),
            ],
          ),
        ),
      ),
    );
  }
}


