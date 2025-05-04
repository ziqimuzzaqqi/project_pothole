import 'package:flutter/material.dart';
import '../models/history_model.dart';
import 'package:intl/intl.dart';

class HistoryCard extends StatelessWidget {
  final HistoryItem item;

  const HistoryCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            item.imageUrl,
            width: 56,
            height: 56,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          item.location,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          DateFormat.yMMMd().add_jm().format(item.dateTime),
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
        trailing: Text(
          item.status,
          style: TextStyle(
            color: item.status == 'Selesai' ? Colors.green : Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
