import 'dart:math';

import 'package:app_tiktok/src/domain/entities/video.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InteractionButtons extends StatelessWidget {
  InteractionButtons({super.key, required this.video});

  final Video video;
  final Random _random = Random();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  color: Colors.pink,
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    video.userAvatar,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Transform.scale(
                  scale: 1.1,
                  child: const CircleAvatar(
                    backgroundColor: Colors.pink,
                    radius: 8,
                    child: Icon(
                      Icons.add,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Column(
          children: [
            const Icon(CupertinoIcons.heart_fill),
            Text(_random.nextInt(1000).toString()),
          ],
        ),
        const SizedBox(height: 8),
        Column(
          children: [
            const Icon(CupertinoIcons.chat_bubble_text_fill),
            Text(_random.nextInt(250).toString()),
          ],
        ),
        const SizedBox(height: 8),
        Column(
          children: [
            const Icon(Icons.bookmark_outlined),
            Text(_random.nextInt(500).toString()),
          ],
        ),
        const SizedBox(height: 8),
        Column(
          children: [
            const Icon(Icons.send),
            Text(_random.nextInt(500).toString()),
          ],
        ),
      ],
    );
  }
}
