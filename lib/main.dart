import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_market/pages/home_page.dart';
import 'package:food_market/shared/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: Constants.apiKey,
          appId: Constants.appId,
          messagingSenderId: Constants.messagingSenderId,
          projectId: Constants.projectId));
  runApp(const FoodMarket());
}

class FoodMarket extends StatelessWidget {
  const FoodMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodMarket',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
