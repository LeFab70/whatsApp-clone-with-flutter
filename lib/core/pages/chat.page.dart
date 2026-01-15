import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/core/theme/colors.dart';
import 'package:whatsapp_clone/shared/widgets/bottom.app.bar.dart';
import 'package:whatsapp_clone/shared/widgets/chat.bubble.dart';

class ChatPage extends StatelessWidget {
  final Map<String, dynamic> chapData;

  const ChatPage({super.key, required this.chapData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        foregroundColor: Colors.white,
        centerTitle: false,
        titleSpacing: 0,
        leadingWidth: 70,
        title: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(chapData['senderProfile']),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    chapData['senderName'],
                    style: GoogleFonts.inter(
                      //olor: Colors.grey[800],
                      // Plus sombre pour le nom
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "En ligne",
                    style: GoogleFonts.inter(
                      color: WhatsAppColors.greenLight,
                      // Plus sombre pour le nom
                      fontWeight: FontWeight.w800,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/whatsapp_bg.png"),
            // Ton image de fond
            fit: BoxFit.cover,
            opacity: 0.06, // Très léger pour ne pas gêner la lecture
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.only(top: 10, bottom: 20),
          children: [
            ChatBubble(
              message: chapData["message"],
              date: chapData['date'],
              isMe: false,
            ),
            const ChatBubble(
              message: "Oui, je suis en train de finaliser la partie Body ! 🚀",
              date: "16:40",
              isMe: true,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBars(),
    );
  }
}
