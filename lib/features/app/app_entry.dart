import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/theme/colors.dart';
import 'package:whatsapp_clone/features/home/home.page.dart';

class AppEntry extends StatelessWidget {
  const AppEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp clone",
      home: const HomePage(),
      theme: ThemeData(
        primaryColor: WhatsAppColors.greenPrimary,
        appBarTheme:  AppBarTheme(
          backgroundColor: WhatsAppColors.appBarDark,
          foregroundColor: WhatsAppColors.textWhites,
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 30),
          iconTheme: IconThemeData(
            size: 30,
            color: WhatsAppColors.textWhites
          ),

        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: WhatsAppColors.greenLight,
          foregroundColor: WhatsAppColors.textWhites,
          iconSize: 30,
          elevation: 12,
          hoverColor: WhatsAppColors.greyText
        )
      ),

    );
  }
}
