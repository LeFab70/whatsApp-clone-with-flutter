import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/core/theme/colors.dart';

class ChatPage extends StatelessWidget {
  final Map<String, dynamic> chapData;

  const ChatPage({super.key, required this.chapData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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

        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 15, top: 10,right: 5),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: WhatsAppColors.greyText,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Text(
          chapData['message'],
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w800,
            fontSize: 18,
            color: WhatsAppColors.textWhites,
          ),
         softWrap: true,
        ),
      ),
    );
  }
}
