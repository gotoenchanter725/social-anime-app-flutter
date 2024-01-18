import 'package:flutter/widgets.dart';
import 'package:giphy_get/giphy_get.dart';

class GiphySelector extends StatelessWidget {
  final void Function(GiphyGif gif) onGifSelected;
  const GiphySelector({super.key, required this.onGifSelected});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
