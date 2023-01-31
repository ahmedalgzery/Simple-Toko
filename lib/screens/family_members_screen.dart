import 'package:flutter/material.dart';
import 'package:toku/componant/componant.dart';
import 'package:toku/shard/family_members_data.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      
      appBar: AppBar(
        
        
        title: const Text(
          'Family Members',
          style: TextStyle(
            fontSize: 35.0,
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