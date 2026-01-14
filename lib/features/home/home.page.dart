import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/theme/colors.dart';
import 'package:whatsapp_clone/shared/widgets/menu.section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
        ],
      ),
      body: Column(
        //pour les sections
        children: [
          MenuSection(),
          Container(height: 100, color: WhatsAppColors.greenLight),
          Expanded(child: Container(color: WhatsAppColors.receiverBubble)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
