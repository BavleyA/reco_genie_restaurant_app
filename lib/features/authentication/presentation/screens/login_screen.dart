import 'package:flutter/material.dart';
import 'package:reco_genie_restaurant_app/core/constants/app_sizes.dart';
import 'package:reco_genie_restaurant_app/core/utils/validators.dart';
import 'package:reco_genie_restaurant_app/features/authentication/presentation/widgets/custom_auth_text_form_field.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/helper.dart';
import '../widgets/elevated_button.dart';
import '../widgets/forget_password_widget.dart';
import '../widgets/login_screen_divider.dart';
import '../widgets/outlined_button.dart';
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

                      ForgetPass(dark: dark),

                      const SizedBox(height: AppSizes.sizedBoxHeightMd,),

                      ElevatedAuthButton(
                        formKey: _formKey,
                        dark: dark ,
                        text: AppStrings.loginButtonText,
                        email: emailController.text,
                        password: passwordController.text,

                      ),

                      const SizedBox(height: AppSizes.sizedBoxHeightSm,),

                      OutlinedAuthButton(dark: dark),

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