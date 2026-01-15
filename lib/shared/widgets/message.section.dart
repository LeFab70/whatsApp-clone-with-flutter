import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/core/theme/colors.dart';
import 'package:whatsapp_clone/data/others/messages.list.dart';

class MessageSection extends StatelessWidget {
  final List<Map<String, dynamic>> messages = MessageList.messages;

  MessageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,

      //color: WhatsAppColors.receiverBubble,
      child: Column(
        children: messages.map((message) {
          return InkWell(
            highlightColor: WhatsAppColors.greenPrimary,
            splashColor: WhatsAppColors.greenLight,
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 15),
              child: Row(
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: WhatsAppColors.greenPrimary,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(message['senderProfile']),
                      ),

                      // borderRadius: BorderRadius.only(
                      //   topRight: Radius.circular(40)
                      // )
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              message['senderName'],
                              style: GoogleFonts.inter(
                                color: Colors.grey[800],
                                // Plus sombre pour le nom
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              message['date'] ?? "12:00", // On affiche l'heure
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                message['message'],
                                style: GoogleFonts.inter(
                                  color: Colors.black54,
                                  fontSize: 14,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                              ),
                            ),
                            message['unRead'] != 0
                                ? Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                      right: 15,
                                    ),
                                    padding: const EdgeInsets.all(7),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: WhatsAppColors.greenLight,
                                    ),
                                    child: Text(
                                      message['unRead'].toString(),
                                      style: GoogleFonts.inter(
                                        color: WhatsAppColors.textWhites,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                        // SizedBox(height: 10),
                        // Container(
                        //   height: 0.5,
                        //   color: Colors.grey.withAlpha(200),
                        // ),
                        const Divider(
                          height: 20,
                          // L'espace total que prend le widget (haut + bas)
                          thickness: 0.5,
                          // L'épaisseur réelle de la ligne
                          indent: 0,
                          // Espace vide au début (gauche)
                          endIndent: 20,
                          // Espace vide à la fin (droite)
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
