import 'package:flutter/material.dart';
import '../mock_data.dart';
import '../widgets/app_header.dart';
import '../widgets/speaker_card.dart';

class SpeakersScreen extends StatelessWidget {
  const SpeakersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12, childAspectRatio: 0.65,
        ),
        itemCount: MockData.speakers.length,
        itemBuilder: (context, index) => SpeakerCard(speaker: MockData.speakers[index]),
      ),
    );
  }
}
