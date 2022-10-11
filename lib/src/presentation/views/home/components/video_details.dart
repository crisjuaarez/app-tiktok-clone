import 'package:app_tiktok/src/domain/entities/video.dart';
import 'package:flutter/material.dart';

class VideoDetails extends StatelessWidget {
  const VideoDetails(this.video, {super.key});

  final Video video;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          video.title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(video.description, maxLines: 3),
      ],
    );
  }
}
