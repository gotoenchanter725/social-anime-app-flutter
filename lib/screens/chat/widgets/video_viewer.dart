import 'dart:async';
import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

@RoutePage()
class VideoViewerPage extends StatefulWidget {
  const VideoViewerPage({
    super.key,
    required this.video,
    required this.controllable,
  });
  final File video;
  final bool controllable;

  @override
  State<VideoViewerPage> createState() => _VideoViewerState();
}

class _VideoViewerState extends State<VideoViewerPage> {
  late final VideoPlayerController videoController;
  Timer timer = Timer(Duration.zero, () {});
  bool showControls = true;

  @override
  void initState() {
    videoController = VideoPlayerController.file(widget.video);
    videoController.initialize().then((value) {
      if (widget.controllable) {
        videoController.play();
        showControls = false;
      }

      setState(() {});
    });
    videoController.addListener(playerListener);

    super.initState();
  }

  @override
  void dispose() {
    videoController.removeListener(playerListener);
    videoController.dispose();
    timer.cancel();
    super.dispose();
  }

  void playerListener() {
    if (videoController.value.position == videoController.value.duration) {
      videoController.seekTo(Duration.zero);
      setState(() {});
    }
  }

  void changePlayState() {
    if (videoController.value.isPlaying) {
      videoController.pause();
    } else {
      videoController.play();
    }

    toggleControls();
  }

  void toggleControls() {
    showControls = !showControls;
    if (timer.isActive) timer.cancel();

    timer = Timer(const Duration(seconds: 2), () {
      if (!mounted) return;
      setState(() {
        showControls = false;
      });
    });

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (!videoController.value.isInitialized) {
      return SizedBox(
        width: videoController.value.size.width,
        height: videoController.value.size.height,
      );
    }

    Widget button = videoController.value.isPlaying
        ? CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 209, 208, 208),
            radius: 25,
            child: GestureDetector(
              onTap: () => changePlayState(),
              child: const Icon(
                Icons.pause_rounded,
                size: 30,
              ),
            ),
          )
        : CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 209, 208, 208),
            radius: 25,
            child: GestureDetector(
              onTap: () => changePlayState(),
              child: const Icon(
                Icons.play_arrow_rounded,
                size: 30,
              ),
            ),
          );

    return widget.controllable
        ? GestureDetector(
            onTap: toggleControls,
            child: Stack(
              alignment: Alignment.center,
              children: [
                AspectRatio(
                  aspectRatio: videoController.value.aspectRatio,
                  child: VideoPlayer(videoController),
                ),
                if (showControls) ...[button],
              ],
            ),
          )
        : AspectRatio(
            aspectRatio: videoController.value.aspectRatio,
            child: VideoPlayer(videoController),
          );
  }
}
