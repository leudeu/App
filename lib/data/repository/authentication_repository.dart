import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:yt_ecommerce_admin_panel/screens/login/login.dart';
import 'package:yt_ecommerce_admin_panel/screens/onboarding/onboarding.dart';
import 'package:yt_ecommerce_admin_panel/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:yt_ecommerce_admin_panel/utils/exceptions/format_exceptions.dart';
import 'package:yt_ecommerce_admin_panel/utils/exceptions/platform_exceptions.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;


  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    //local storage

    if (kDebugMode) {
      print('================= Get Storage  Auth Repo=====================');
      print(deviceStorage.read('IsFirstTime'));
    }


    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true ? Get
        .offAll(() => const LoginScreen()) : Get.offAll(
        const OnBoardingScreen());
  }

  //*------------------------- Email & password sign-in----------------*

  /// [ email authentication] sign in


  /// [ email authentication] Register
  Future<UserCredential> registerWithEmailAndPassword(String email,
      String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'something went wrong please try again';
    }
  }
}
