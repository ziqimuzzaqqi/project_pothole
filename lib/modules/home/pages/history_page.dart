import 'package:flutter/material.dart';
import 'package:project_pothole/modules/shared/models/history_model.dart';
import 'package:project_pothole/modules/shared/widgets/history_card.dart';

class HistoryPage extends StatelessWidget {
  HistoryPage({Key? key}) : super(key: key);

  final List<HistoryItem> mockHistory = [
    HistoryItem(
      location: 'Location 1',
      dateTime: DateTime.now(),
      status: 'Sent',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    HistoryItem(
      location: 'Location 2',
      dateTime: DateTime.now(),
      status: 'On Processing',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    HistoryItem(
      location: 'Location 3',
      dateTime: DateTime.now(),
      status: 'On Processing',
      imageUrl: 'https://via.placeholder.com/150',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: mockHistory.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: HistoryCard(
            item: mockHistory[index],
          ),
        );
      },
    );
  }
}
