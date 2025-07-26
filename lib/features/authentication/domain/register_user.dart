import 'package:firebase_auth/firebase_auth.dart';
import 'package:reco_genie_restaurant_app/core/services/auth_service.dart';

void registerUser({
  required String email,
  required String password,

}) async{

  try{

    await authService.value.signUpWithEmailAndPassword(
        email: email, password: password
    );


  } on FirebaseAuthException catch (e) {

    print(e.message);

  }


}
