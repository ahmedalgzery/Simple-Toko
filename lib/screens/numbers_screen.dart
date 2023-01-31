import 'package:flutter/material.dart';
import 'package:toku/componant/componant.dart';
import 'package:toku/shard/numbers_data.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        
        elevation: 0.0,
        title: const Text(
          'Numbers',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => mainItem(enName: numbers[index].enName, jpName: numbers[index].jpName, sound: numbers[index].sound,image: numbers[index].image!, itemType: 'numbers'),
        itemCount: numbers.length,
        shrinkWrap: true,
      ),
    );
  }
}
