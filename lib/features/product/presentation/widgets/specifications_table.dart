import 'package:flutter/material.dart';
import 'package:refily/core/theme/theme_extension.dart';

class SpecificationsTable extends StatelessWidget {
  final Map<String, String> specs;
  const SpecificationsTable({super.key, required this.specs});

  @override
  Widget build(BuildContext context) {
    if (specs.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Specifications",
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Table(
          border: TableBorder.all(
            color: context.colorScheme.primary,
            borderRadius: BorderRadius.circular(8),
          ),
          columnWidths: const {
            0: FlexColumnWidth(2), // Title Column (Key)
            1: FlexColumnWidth(3), // Detail Column (Value)
          },
          children: specs.entries.map((entry) {
            return TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    entry.key,
                    style: context.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(entry.value, style: context.textTheme.bodyMedium),
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
