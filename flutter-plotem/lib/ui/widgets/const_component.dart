// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyProfileImage extends StatelessWidget {
  String url;
  double radius;
  MyProfileImage({
    super.key,
    required this.url,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    final finalurl = url.isEmpty
        ? "https://i.pinimg.com/736x/c0/74/9b/c0749b7cc401421662ae901ec8f9f660.jpg"
        : url;
    return CircleAvatar(
      maxRadius: radius == 0 ? 25 : radius,
      backgroundImage: NetworkImage(
        finalurl,
      ),
    );
  }
}
