import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../theme.dart';
import '../mock_data.dart';

class SpeakerCard extends StatelessWidget {
  final Speaker speaker;
  const SpeakerCard({super.key, required this.speaker});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: AppTheme.cardDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CachedNetworkImage(
              imageUrl: speaker.imageUrl,
              height: 110, width: double.infinity, fit: BoxFit.cover,
              placeholder: (context, url) => Container(height: 110, color: AppTheme.cardBlue,
                  child: const Center(child: CircularProgressIndicator())),
              errorWidget: (context, url, error) => Container(height: 110, color: AppTheme.cardBlue,
                  child: const Icon(Icons.person, size: 40, color: AppTheme.navyBlue)),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(speaker.name, style: AppTheme.subheading.copyWith(fontSize: 13), maxLines: 1, overflow: TextOverflow.ellipsis),
                  if (speaker.company.isNotEmpty)
                    Text(speaker.company, style: AppTheme.caption, maxLines: 1, overflow: TextOverflow.ellipsis),
                  Text(speaker.role, style: AppTheme.caption, maxLines: 1, overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 2),
                  Text(speaker.bio, style: AppTheme.caption, maxLines: 2, overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
