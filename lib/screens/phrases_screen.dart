import 'package:flutter/material.dart';
import 'package:toku/componant/componant.dart';
import 'package:toku/shard/phrases_data.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        
        title: const Text(
          'Phrases',
          style: TextStyle(
            fontSize: 35.0,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => PhrasesItem(enName: phrases[index].enName, jpName: phrases[index].jpName, sound: phrases[index].sound, itemType: 'phrases'),
        itemCount: phrases.length,
        shrinkWrap: true,
      ),
    );
    
  }
}