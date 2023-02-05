import 'package:clone_chat_app/Presentation/other_widgets.dart/drawer_widget.dart';
import "package:flutter/material.dart";

class LayoutWidget extends StatelessWidget {
  final Widget child;
  const LayoutWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          foregroundColor: Colors.black87,
          title: const Text("Chat App"),
        ),
        body: SafeArea(child: child),
        drawer: const DrawerWidget());
  }
}
