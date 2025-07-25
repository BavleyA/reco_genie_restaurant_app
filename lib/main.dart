import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:reco_genie_restaurant_app/app.dart';
import 'package:reco_genie_restaurant_app/firebase_options.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
}
