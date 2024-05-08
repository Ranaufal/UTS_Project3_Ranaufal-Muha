import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:plotem/ui/pages/home_page.dart';
import 'package:plotem/ui/pages/profile_page.dart';
import 'package:plotem/ui/pages/quality_page.dart';
import 'package:plotem/ui/pages/search_page.dart';
import 'package:plotem/ui/widgets/glass_bg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    QualityPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plotem',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GlassBackground(
          theChild: Stack(
            children: [
              _widgetOptions.elementAt(_selectedIndex),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.white60,
                          width: 1,
                        ),
                      ),
                    ),
                    child: MyGlassBox(
                      theChild: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 20, 25, 35),
                        child: GNav(
                          color: Colors.grey,
                          activeColor: Colors.white,
                          tabBackgroundColor: const Color(0xff23b6e6),
                          padding: const EdgeInsets.all(16),
                          gap: 8,
                          onTabChange: (index) {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          tabs: const [
                            GButton(
                              icon: Icons.home,
                              text: "Home",
                            ),
                            GButton(
                              icon: Icons.search,
                              text: "Search",
                            ),
                            GButton(
                              icon: Icons.high_quality_rounded,
                              text: "Quality",
                            ),
                            GButton(
                              icon: Icons.person,
                              text: "Profile",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
