// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:plotem/ui/widgets/const_component.dart';

class MyPostWidget extends StatelessWidget {
  const MyPostWidget({super.key});

  final TextStyle _textStyle = const TextStyle(
    fontSize: 12,
    color: Colors.black54,
  );

  @override
  Widget build(BuildContext context) {
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
          Expanded(
            flex: 85,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Ranaufal Muha",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 3),
                const Text(
                  "Programmer",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Guys Aku lagi mengikuti hackathon di cybertech pnp loh! mantep bangeetttttt... Exited aqoehh..",
                  style: TextStyle(),
                ),
                const SizedBox(height: 15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: const Image(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "./lib/assets/ifal.JPG",
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.thumb_up_outlined,
                            color: Colors.black54,
                            size: 18,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text("90", style: _textStyle),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.thumb_down_alt_outlined,
                            color: Colors.black54,
                            size: 18,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text("90", style: _textStyle),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.mode_comment_outlined,
                            color: Colors.black54,
                            size: 18,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text("90", style: _textStyle),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.ios_share_sharp,
                        color: Colors.black54,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
