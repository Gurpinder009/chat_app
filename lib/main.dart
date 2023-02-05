import 'package:clone_chat_app/firebase_options.dart';
import 'package:clone_chat_app/provider_widget.dart';
import "package:flutter/material.dart";
import "package:firebase_core/firebase_core.dart";

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderWidget();
  }
}
