import 'package:flutter/material.dart';

/// Widget we can showing all image all over app
/// Params: image url
class URLImage extends StatelessWidget {
  final String imageUrl;

  /// cacheHeight flutter cache data to when user scroll image not reload again
  ///  height for caching
  final int cacheHeight;

  ///  width for caching
  ///  flutter will cache the image so when user scroll image not reload again
  final int cacheWidth;

  const URLImage({
    Key? key,
    required this.imageUrl,
    this.cacheHeight = 100,
    this.cacheWidth = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://i.picsum.photos/id/0/5616/3744.jpg?hmac=zlyEAMkfEdBzQddddd',
      fit: BoxFit.fill,
      cacheHeight: cacheHeight,
      cacheWidth: cacheWidth,
      errorBuilder:
          (BuildContext context, Object error, StackTrace? stackTrace) {
        return Container(
          decoration: const BoxDecoration(color: Colors.grey),
          child: const Icon(
            Icons.error,
            size: 25,
          ),
        );
      },
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(
            color: Colors.black,
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      },
    );
  }
}
