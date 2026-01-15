import 'package:flutter/material.dart';

import 'package:whatsapp_clone/shared/widgets/favorite.section.dart';
import 'package:whatsapp_clone/shared/widgets/menu.section.dart';
import 'package:whatsapp_clone/shared/widgets/message.section.dart';

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
          FavoriteSection(),
          Expanded(child: MessageSection())
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
