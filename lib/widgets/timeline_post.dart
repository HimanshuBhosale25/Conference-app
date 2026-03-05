import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../theme.dart';
import '../mock_data.dart';

class TimelinePostCard extends StatelessWidget {
  final TimelinePost post;
  const TimelinePostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: AppTheme.cardDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18, backgroundColor: AppTheme.navyBlue,
                  child: Text(post.author[0], style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(post.author, style: AppTheme.subheading),
                    Text(post.timeAgo, style: AppTheme.caption),
                  ],
                ),
              ],
            ),
          ),
          CachedNetworkImage(
            imageUrl: post.imageUrl,
            width: double.infinity, height: 180, fit: BoxFit.cover,
            placeholder: (context, url) => Container(height: 180, color: AppTheme.cardBlue),
            errorWidget: (context, url, error) => Container(height: 180, color: AppTheme.cardBlue,
                child: const Center(child: Icon(Icons.image, size: 40, color: AppTheme.navyBlue))),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 6,
                  children: post.hashtags.map((tag) => Text(tag,
                      style: AppTheme.caption.copyWith(color: AppTheme.navyBlue, fontWeight: FontWeight.bold))).toList(),
                ),
                const SizedBox(height: 4),
                Text(post.caption, style: AppTheme.body),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.share, size: 20, color: Colors.grey),
                    const SizedBox(width: 16),
                    const Icon(Icons.favorite_border, size: 20, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text('${post.likes}', style: AppTheme.caption),
                    const SizedBox(width: 16),
                    const Icon(Icons.comment_outlined, size: 20, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text('${post.comments}', style: AppTheme.caption),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
