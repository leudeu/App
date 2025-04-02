import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:universal_html/html.dart';
import 'package:yt_ecommerce_admin_panel/data/repository/authentication_repository.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/image_strings.dart';
import 'package:yt_ecommerce_admin_panel/utils/helpers/network_manager.dart';
import 'package:yt_ecommerce_admin_panel/utils/popups/full_screen_loader.dart';
import 'package:yt_ecommerce_admin_panel/utils/popups/loaders.dart';

import '../../../../data/repository/user/user_repository.dart';
import '../../../../screens/signup/verify_email.dart';
import '../../models/user_model.dart';

// Define your UserModel


class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  /// ---- SIGNUP
  Future<void> signup() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information ...', TImages.docerAnimation);

      // Check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form validation
      if (!signupFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }


      // Privacy policy check
      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(
          title: 'Accept privacy policy',
          message:
          'In order to create an account, you must read and accept the privacy policy & terms of use.',
        );
        return;
      }

      // Register user in Firebase authentication & save
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
          email.text.trim(), password.text.trim());

      // Save authentication
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trimLeft(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      //remove loader
      TFullScreenLoader.stopLoading();

       // show success message
      TLoaders.successSnackBar(title: 'congratulations', message: 'your account has been created verify email to continue. ');

      // move to verify email screen
      Get.to(()=> const VerifyEmailScreen());

    } catch (e) {
      // Show generic errors to the user
     TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'oh snap', message: e.toString());
    }
  }
}
