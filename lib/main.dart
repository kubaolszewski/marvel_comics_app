import 'package:flutter/material.dart';
import 'package:marvel_comics_app/app/features/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marvel Comics App Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}
