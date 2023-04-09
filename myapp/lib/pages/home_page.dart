import 'package:flutter/material.dart';
import 'package:myapp/components/heading.dart';
import 'package:myapp/components/search.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/components/label_section.dart';
import 'package:myapp/components/recommended.dart';
import 'package:myapp/components/top.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: medium, top: 50, right: medium),
          child: Column(
            children:  [
              const HeadingSection(),
              SizedBox(height: medium),
              const SearchSection(),
              SizedBox(height: medium),
              LabelSection(text: 'Recommended', style: heading1 ),
              SizedBox(height: medium),
              const Recommended(),
              SizedBox(height: medium),
              LabelSection(text: 'Top Destination', style: heading2),
              SizedBox(height: medium),
              const Top()
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 94,
        child: BottomNavigationBar(
          selectedItemColor: accent,
          unselectedItemColor: icon,
          backgroundColor: white,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: '',),
            BottomNavigationBarItem(icon: Icon(Icons.explore),label: '',),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark_outline),label: '',),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: '',),
          ],
        ),
      ),
    );
  }
}
