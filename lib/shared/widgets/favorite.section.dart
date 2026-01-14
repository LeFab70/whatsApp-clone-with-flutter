import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/core/theme/colors.dart';

class FavoriteSection extends StatelessWidget {
  final List<Map<String, dynamic>> favoritesProfiles = [
    {'name': 'LeFab', 'profile': 'assets/avatar/user1.png'},
    {'name': 'Regine', 'profile': 'assets/avatar/user1.png'},
    {'name': 'Andy', 'profile': 'assets/avatar/user3.png'},
    {'name': 'Cyrianne', 'profile': 'assets/avatar/user4.png'},
    {'name': 'Marc', 'profile': 'assets/avatar/user1.png'},
    {'name': 'Sophie', 'profile': 'assets/avatar/user3.png'},
    {'name': 'Lucas', 'profile': 'assets/avatar/user4.png'},
    {'name': 'Emma', 'profile': 'assets/avatar/user1.png'},
    {'name': 'Thomas', 'profile': 'assets/avatar/user3.png'},
    {'name': 'Julie', 'profile': 'assets/avatar/user4.png'},
  ];

  FavoriteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      color: WhatsAppColors.backgroundDark,
      //padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: WhatsAppColors.greenPrimary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Text(
                    "Favorite contacts",
                    style: GoogleFonts.inter(
                      color: WhatsAppColors.textWhites,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.more_horiz,
                    color: WhatsAppColors.textWhites,
                    size: 20,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: favoritesProfiles.map((favorite) {
                  return Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //Ink.image(image: AssetImage(favorite["profile"])),
                        Container(
                          margin: EdgeInsets.all(4),
                          height: 70,
                          width: 70,
                          // decoration: BoxDecoration(
                          //   shape: BoxShape.circle,
                          //   color: WhatsAppColors.textWhites,
                          // ),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundColor: WhatsAppColors.textWhites,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(favorite['profile']),
                              child: favorite['profile'] == null
                                  ? Text(favorite['name'][0])
                                  : null,
                            ),
                          ),
                        ),

                        SizedBox(height: 6),
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            favorite['name'],
                            style: GoogleFonts.inter(
                              color: WhatsAppColors.textWhites,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
