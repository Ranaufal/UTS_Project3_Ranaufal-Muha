// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:plotem/ui/widgets/const_component.dart';

class QualityPage extends StatefulWidget {
  const QualityPage({super.key});

  @override
  State<QualityPage> createState() => _QualityPageState();
}

class _QualityPageState extends State<QualityPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (int i = 0; i < 10; i++)
          Column(
            children: [
              MyQualityWidget(),
              Divider(),
            ],
          ),
      ],
    );
  }

  MyQualityWidget() {
    // final TextStyle _textStyle = const TextStyle(
    //   fontSize: 12,
    //   color: Colors.black54,
    // );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 15,
            child: MyProfileImage(
              url: "",
              radius: 20,
            ),
          ),
          const SizedBox(width: 8),
          const Expanded(
            flex: 85,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Manajer ku",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  "12 Juni 2023",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      "73",
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.star, size: 17, color: Colors.black),
                    Icon(Icons.star, size: 17, color: Colors.black),
                    Icon(Icons.star, size: 17, color: Colors.black),
                    Icon(Icons.star, size: 17, color: Colors.black38),
                    Icon(Icons.star, size: 17, color: Colors.black38),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  "Kinerja mu sudah bagus, tapi kemaren aku liat kamu main game di kantor. game nya freefire lagi. waduhh..",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
