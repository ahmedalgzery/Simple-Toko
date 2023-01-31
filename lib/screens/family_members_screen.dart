import 'package:flutter/material.dart';
import 'package:toku/componant/componant.dart';
import 'package:toku/shard/family_members_data.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      
      appBar: AppBar(
        
        elevation: 0.0,
        title: const Text(
          'familyMembers',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => mainItem(enName: familyMembers[index].enName, jpName: familyMembers[index].jpName, sound: familyMembers[index].sound,image: familyMembers[index].image!, itemType: 'familyMembers'),
        itemCount: familyMembers.length,
        shrinkWrap: true,
      ),
    );
  }
}