import 'package:flutter/material.dart';
import 'package:plotem/ui/widgets/mypost.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 130,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "./lib/assets/ifal.JPG",
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ranaufal Muha",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  "Programmer",
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("4.2"),
                    SizedBox(width: 5),
                    Icon(Icons.star, size: 16, color: Colors.black),
                    Icon(Icons.star, size: 16, color: Colors.black),
                    Icon(Icons.star, size: 16, color: Colors.black),
                    Icon(Icons.star, size: 16, color: Colors.black),
                    Icon(Icons.star, size: 16, color: Colors.black45),
                  ],
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 20),
        Container(
          width: double.infinity,
          height: .5,
          color: Colors.black12,
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    "88",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "quality",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
              SizedBox(width: 30),
              Container(
                width: .5,
                height: double.infinity,
                color: Colors.black12,
              ),
              SizedBox(width: 30),
              Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    "143",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "connect",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
              SizedBox(width: 30),
              Container(
                width: .5,
                height: double.infinity,
                color: Colors.black12,
              ),
              SizedBox(width: 30),
              Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    "43",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "day",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: .5,
          color: Colors.black12,
        ),
        SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 70),
          child: Text(
            "Saya Adalah Ranaufal Muha. saya adalah programmer di perusahaan ini. saya bisa bahasa pemrograman java, javascript, python, c#",
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Container(
            width: double.infinity,
            height: .5,
            color: Colors.black12,
          ),
        ),
        for (int i = 0; i < 10; i++)
          Column(
            children: [
              MyPostWidget(),
              Divider(),
            ],
          ),
      ],
    );
  }
}


// IntrinsicHeight(
                //   child: Padding(
                //     padding: EdgeInsets.symmetric(horizontal: 0),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                //       children: [
                //         Column(
                //           children: [
                //             Text(
                //               "88",
                //               style: TextStyle(
                //                 fontSize: 15,
                //                 fontWeight: FontWeight.bold,
                //               ),
                //             ),
                //             SizedBox(height: 5),
                //             Text(
                //               "quality",
                //               style: TextStyle(
                //                 fontSize: 12,
                //               ),
                //             ),
                //           ],
                //         ),
                //         SizedBox(width: 15),
                //         Column(
                //           children: [
                //             Text(
                //               "143",
                //               style: TextStyle(
                //                 fontSize: 15,
                //                 fontWeight: FontWeight.bold,
                //               ),
                //             ),
                //             SizedBox(height: 5),
                //             Text(
                //               "connect",
                //               style: TextStyle(
                //                 fontSize: 12,
                //               ),
                //             ),
                //           ],
                //         ),
                //         SizedBox(width: 15),
                //         Column(
                //           children: [
                //             Text(
                //               "43",
                //               style: TextStyle(
                //                 fontSize: 15,
                //                 fontWeight: FontWeight.bold,
                //               ),
                //             ),
                //             SizedBox(height: 5),
                //             Text(
                //               "day",
                //               style: TextStyle(
                //                 fontSize: 12,
                //               ),
                //             ),
                //           ],
                //         ),
                //       ],
                //     ),
                //   ),
                // ),