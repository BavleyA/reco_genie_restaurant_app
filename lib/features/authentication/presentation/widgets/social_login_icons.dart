import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_image_strings.dart';
import '../../../../core/constants/app_sizes.dart';

class SocialLoginIcons extends StatelessWidget {
  const SocialLoginIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.borderDark,
            ),
            borderRadius: BorderRadius.circular(100),

          ),
          child: IconButton(
              onPressed: (){},
              icon: const Image(
                width: AppSizes.iconSizeMedium,
                height: AppSizes.iconSizeMedium,
                image: AssetImage(AppImageStrings.google),

              )
          ),
        ),

        const SizedBox(width : AppSizes.sizedBoxWidthMd,),

        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.borderDark,
            ),
            borderRadius: BorderRadius.circular(100),

          ),
          child: IconButton(
              onPressed: (){},
              icon: const Image(
                width: AppSizes.iconSizeMedium,
                height: AppSizes.iconSizeMedium,
                image: AssetImage(AppImageStrings.facebook),
              )
          ),
        ),
      ],
    );
  }
}
