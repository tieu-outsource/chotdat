import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color.dart';

class SaleItem extends StatelessWidget {
  final Color color;
  final int index;

  const SaleItem({super.key, required this.color, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                  decoration: BoxDecoration(border: Border.all(color: color)),
                  child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: const BorderRadius.vertical(
                              bottom: Radius.circular(10),
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Styles.strokeColor,
                                offset: Offset(0, 2),
                              )
                            ],
                          ),
                          padding: const EdgeInsets.only(
                              top: 7, bottom: 7, right: 5, left: 80),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Số 1 Đỗ Quang",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.white)),
                              Text("3 tỷ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.white)),
                            ],
                          )),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 7, bottom: 7, right: 5, left: 75),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Diện tích: 55m2",
                                        style: GoogleFonts.openSans(
                                            fontSize: 11, color: Colors.black)),
                                    const SizedBox(height: 5),
                                    Text("Mặt tiền: 8m",
                                        style: GoogleFonts.openSans(
                                            fontSize: 11, color: Colors.black)),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Xây dựng: 5 tầng",
                                        style: GoogleFonts.openSans(
                                            fontSize: 11, color: Colors.black)),
                                    const SizedBox(height: 5),
                                    Text("Pháp lý: sổ đỏ",
                                        style: GoogleFonts.openSans(
                                            fontSize: 11, color: Colors.black)),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Hướng: Đông Nam",
                                        style: GoogleFonts.openSans(
                                            fontSize: 11, color: Colors.black)),
                                    const SizedBox(height: 5),
                                    Text("Kích thước đường: 5m",
                                        style: GoogleFonts.openSans(
                                            fontSize: 11, color: Colors.black)),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: ImageIcon(
                                    const AssetImage(
                                        'images/icons/speech_bubble.png'),
                                    color: color,
                                    size: 18,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: ImageIcon(
                                    const AssetImage('images/icons/user.png'),
                                    color: color,
                                    size: 18,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: ImageIcon(
                                    const AssetImage(
                                        'images/icons/timetable.png'),
                                    color: color,
                                    size: 18,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: ImageIcon(
                                    const AssetImage('images/icons/share.png'),
                                    color: color,
                                    size: 18,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: ImageIcon(
                                    const AssetImage(
                                        'images/icons/phone_call.png'),
                                    color: color,
                                    size: 18,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: ImageIcon(
                                    const AssetImage(
                                        'images/icons/auction_icon.png'),
                                    color: color,
                                    size: 18,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: ImageIcon(
                                    const AssetImage(
                                        'images/icons/folder_transfer.png'),
                                    color: color,
                                    size: 18,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text('Chi tiết  ',
                                      style: GoogleFonts.openSans(
                                          fontSize: 11, color: color)),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),
            Positioned(
              top: 0,
              child: Stack(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 23),
                      child: SizedBox(
                        height: 74,
                        width: 74,
                        child: Image.asset('images/sale_thumbnail.png'),
                      )),
                  Stack(
                    children: [
                      Transform.translate(
                        offset: const Offset(0, -3),
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 35, top: 6, bottom: 6),
                          width: 90,
                          decoration: BoxDecoration(
                              color: color,
                              border: Border.all(color: Colors.white),
                              borderRadius: const BorderRadius.horizontal(
                                  right: Radius.circular(50),
                                  left: Radius.circular(50))),
                          child: Text("HOT",
                              style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-2, -4),
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 0),
                                blurRadius: 5,
                              )
                            ]
                          ),
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: color,
                            child: CircleAvatar(
                              radius: 11,
                              backgroundColor: Colors.white,
                              child: Text("$index",
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
