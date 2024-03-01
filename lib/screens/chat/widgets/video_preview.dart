import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:video_player/video_player.dart';

class AttachedVideoViewer extends StatefulWidget {
  final double width;
  final double height;
  final String videoUrl;
  final ChatMessage message;

  const AttachedVideoViewer({
    super.key,
    required this.width,
    required this.height,
    required this.videoUrl,
    required this.message,
  });

  @override
  State<AttachedVideoViewer> createState() => _AttachedVideoViewerState();
}

class _AttachedVideoViewerState extends State<AttachedVideoViewer> {
  late final VideoPlayerController videoController;

  @override
  void initState() {
    super.initState();
    // Determine if the URL is for a network video or a local file
    Uri uri = Uri.parse(widget.videoUrl);
    if (uri.scheme.contains('http')) {
      videoController = VideoPlayerController.networkUrl(uri);
    } else {
      videoController = VideoPlayerController.file(File(widget.videoUrl));
    }

    // Initialize the controller and update the UI when video is ready
    videoController.initialize().then((_) {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    videoController.dispose();
    super.dispose();
  }

  Future<void> navigateToViewer(BuildContext context) async {
    Future.delayed(
      Duration(
        milliseconds: MediaQuery.of(context).viewInsets.bottom > 0 ? 300 : 0,
      ),
      () async {
        if (!mounted) {
          return;
        }
        context.router.push(
          VideoViewerRoute(
            videoUrl: widget.videoUrl,
            controllable: true,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    const background = Color.fromARGB(150, 0, 0, 0);

    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onTap: () {
            navigateToViewer(context);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: background,
                  width: widget.width,
                  height: widget.height,
                ),
                SizedBox(
                  width: widget.width,
                  height: widget.height,
                  child: Hero(
                    tag: widget.message.id,
                    child: AspectRatio(
                      aspectRatio: videoController.value.aspectRatio,
                      child: VideoPlayer(videoController),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 209, 208, 208),
          foregroundColor: Colors.black87,
          radius: 25,
          child: GestureDetector(
            onTap: () {
              navigateToViewer(context);
            },
            child: const Icon(
              Icons.play_arrow_rounded,
              size: 40,
            ),
          ),
        )
      ],
    );
  }
}
