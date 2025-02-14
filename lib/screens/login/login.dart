import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yt_ecommerce_admin_panel/screens/login/widgets/login_form.dart';
import 'package:yt_ecommerce_admin_panel/screens/login/widgets/login_header.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/login_signup/social_buttons.dart';

import '../../common/styles/spacing_styles.dart';
import '../../common/widgets/login_signup/form_divider.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/text_strings.dart';
import '../../utils/helpers/helper_functions.dart';

class  LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// logo title and sumtitle
              TLoginHeader(dark: dark),

              TLoginForm(),

              /// divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!, dark: dark,),
              /// footer

              const SizedBox(height: TSizes.spaceBtwSections),
              TSocialButton(),
            ]
          ),
        ),
      ),


    );
  }
}

