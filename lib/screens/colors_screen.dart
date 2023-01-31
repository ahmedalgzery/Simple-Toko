import 'package:flutter/material.dart';
import 'package:toku/componant/componant.dart';
import 'package:toku/shard/colors_data.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'colors',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => mainItem(
            enName: colors[index].enName,
            jpName: colors[index].jpName,
            sound: colors[index].sound,
            image: colors[index].image,
            itemType: 'colors'),
        itemCount: colors.length,
        shrinkWrap: true,
      ),
    );
  }
}
