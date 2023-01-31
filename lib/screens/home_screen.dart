import 'package:flutter/material.dart';
import 'package:toku/componant/componant.dart';
import 'package:toku/screens/colors_screen.dart';
import 'package:toku/screens/family_members_screen.dart';
import 'package:toku/screens/numbers_screen.dart';
import 'package:toku/screens/phrases_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(
            fontSize: 35.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            mainButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NumbersScreen()),
                  );
                },
                text: 'Numbers'),
            mainButton(onPressed: () {
               Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FamilyMembersScreen()),
                  );
            }, text: 'Family Members'),
            mainButton(onPressed: () {
               Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ColorsScreen()),
                  );
            }, text: 'Colors'),
            mainButton(onPressed: () {
               Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PhrasesScreen()),
                  );
            }, text: 'Phrases'),
          ],
        ),
      ),
    );
  }
}
