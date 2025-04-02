import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yt_ecommerce_admin_panel/navigation_menu.dart';

import '../../../features/linkup_shop/screens/home/widgets/posting_page.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../password_configuration/forget_password.dart';
import '../../signup/signup.dart';


class TLoginForm extends StatelessWidget {
  const TLoginForm({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child:Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          /// email

          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email),

          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          /// password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),

          ),
          const SizedBox(height: TSizes.spaceBtwInputFields/2),
          /// remember me and forget password

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value){}),
                  const Text(TTexts.rememberMe),
                ],
              ),
              /// forget password
              TextButton(onPressed: () => Get.to(()=> const ForgetPassword()), child: const Text(TTexts.forgetPassword)),

            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          ///sign in button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.offAll(()=> const NavigationMenu()),
              child: Text(TTexts.signIn))),
          const SizedBox(height: TSizes.spaceBtwItems),

          /// create Account button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()),child: Text(TTexts.createAccount))),
        ],
      ),
    ),
    );
  }
}

