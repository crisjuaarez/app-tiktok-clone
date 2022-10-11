import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../domain/entities/video.dart';
import 'interaction_buttons.dart';
import 'video_details.dart';

class TikTokWidget extends StatefulWidget {
  const TikTokWidget(this.video, {super.key});
  final Video video;

  @override
  State<TikTokWidget> createState() => _TikTokWidgetState();
}

class _TikTokWidgetState extends State<TikTokWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.video.url)
      ..initialize().then((_) {
        print('initialize');
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
  }

  @override
  void dispose() {
    print('dispose');
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final value = _controller.value;
    return Stack(
      children: [
        Positioned.fill(
          // child: Image.network(widget.video.url, fit: BoxFit.cover),
          // child: Placeholder(),
          child: Center(
            child: value.isInitialized
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        _controller.value.isPlaying
                            ? _controller.pause()
                            : _controller.play();
                      });
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AspectRatio(
                          aspectRatio: value.aspectRatio,
                          child: VideoPlayer(_controller),
                        ),
                        if (!value.isPlaying)
                          const Icon(
                            Icons.play_arrow,
                            size: 48,
                            color: Colors.white60,
                          ),
                      ],
                    ),
                  )
                : const CircularProgressIndicator.adaptive(),
          ),
        ),
        Positioned(
          left: 8,
          bottom: 12,
          child: VideoDetails(widget.video),
        ),
        Positioned(
          right: 8,
          bottom: 12,
          child: InteractionButtons(video: widget.video),
        ),
      ],
    );
  }
}
