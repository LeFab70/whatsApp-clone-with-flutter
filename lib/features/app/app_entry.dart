import 'package:flutter/material.dart';
import 'package:whatsapp_clone/features/home/home.page.dart';

class AppEntry extends StatelessWidget {
  const AppEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp clone",
      home: HomePage(),
    );
  }
}
