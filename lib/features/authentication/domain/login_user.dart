import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/services/auth_service.dart';

void loginUser({
  required String email,
  required String password,
}) async {
  try {
    await authService.value.signIn(
      email: email,
      password: password,
    );
  } on FirebaseAuthException catch (e) {
    print(e.message);
  }
}