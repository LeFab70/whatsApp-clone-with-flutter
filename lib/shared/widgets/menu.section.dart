import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/core/theme/colors.dart';


class MenuSection extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {"text": "Messages", "icon": Icons.chat},
    {"text": "Online", "icon": Icons.lens},
    {"text": "Groups", "icon": Icons.group},
    {"text": "Calls", "icon": Icons.call},
  ];

  MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      color: WhatsAppColors.backgroundDark,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: menuItems.map((item) {
              return Container(
                margin: const EdgeInsets.only(right: 35),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(item["icon"], color: WhatsAppColors.greenLight),
                    const SizedBox(height: 8), // Espace entre icône et texte
                    Text(
                      item["text"],
                      style: GoogleFonts.inter(
                        color: Colors.white60,
                        fontSize: 20
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
