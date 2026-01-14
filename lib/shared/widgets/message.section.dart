import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/theme/colors.dart';

class MessageSection extends StatelessWidget {
  const MessageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(color: WhatsAppColors.receiverBubble));
  }
}
