import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yt_ecommerce_admin_panel/screens/signup/widgets/signup_form.dart';

import '../../common/widgets/login_signup/form_divider.dart';
import '../../common/widgets/login_signup/social_buttons.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  final bool dark; // Define the dark variable

  const SignupScreen({super.key, this.dark = false}); // Initialize dark with a default value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TTexts.signupTitle), // Customize AppBar
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Form
              TSignupForm(dark: dark),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!, dark: dark,),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Social media button
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
