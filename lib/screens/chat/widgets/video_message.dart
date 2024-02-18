import 'dart:io';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoMessageWidget extends StatefulWidget {
  final String videoPath;

  const VideoMessageWidget({Key? key, required this.videoPath})
      : super(key: key);

  @override
  _VideoMessageWidgetState createState() => _VideoMessageWidgetState();
}

class _VideoMessageWidgetState extends State<VideoMessageWidget> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Determine if the videoPath is a local file or a network URL.
    bool isLocalFile = Uri.tryParse(widget.videoPath)?.hasScheme != true;

    // Initialize the controller with either a file or a network video.
    if (isLocalFile) {
      _controller = VideoPlayerController.file(File(widget.videoPath));
    } else {
      _controller =
          VideoPlayerController.networkUrl(Uri.parse(widget.videoPath));
    }

    // Initialize the video player and store the Future for use in the build method.
    _initializeVideoPlayerFuture = _controller.initialize().then((_) {
      // Ensure the first frame is shown after the video is initialized, even before play button is pressed.
      setState(() {});
    });
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // If the Future is complete, display the video player.
          return AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          );
        } else {
          // Otherwise, display a loading spinner.
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
