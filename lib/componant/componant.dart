// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

Widget mainButton({
  required String text,
  required VoidCallback onPressed,
}) {
  return ElevatedButton(
    style: const ButtonStyle(
      shadowColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
      alignment: Alignment.centerLeft,
      minimumSize: MaterialStatePropertyAll(
        Size(double.infinity, 100),
      ),
    ),
    onPressed: onPressed,
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 50.0,
      ),
    ),
  );
}

Widget mainItem({
  required String image,
  required String jpName,
  required String enName,
  required String sound,
  required String itemType,
}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 80.0,
      color: Colors.lightBlueAccent,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  height: 80.0,
                  color: Colors.lightBlue,
                  child: Image.asset(image)),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jpName,
                      style: const TextStyle(fontSize: 15.0),
                    ),
                    Text(
                      enName,
                      style: const TextStyle(fontSize: 15.0),
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              IconButton(
                onPressed: () {
                  try {
                    AudioCache player =
                        AudioCache(prefix: 'assets/sounds/$itemType/');
                    player.play(sound);
                  } catch (ex) {
                    print(ex);
                  }
                },
                icon: const Icon(Icons.play_arrow),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget PhrasesItem({
  required String jpName,
  required String enName,
  required String sound,
  required String itemType,
}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 80.0,
      color: Colors.lightBlue,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jpName,
                      style: const TextStyle(fontSize: 15.0),
                    ),
                    Text(
                      enName,
                      style: const TextStyle(fontSize: 15.0),
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              IconButton(
                onPressed: () {
                  try {
                    AudioCache player =
                        AudioCache(prefix: 'assets/sounds/$itemType/');
                    player.play(sound);
                  } catch (ex) {
                    print(ex);
                  }
                },
                icon: const Icon(Icons.play_arrow),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
