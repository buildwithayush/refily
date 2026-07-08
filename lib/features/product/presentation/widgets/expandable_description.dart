import 'package:flutter/material.dart';
import 'package:refily/core/theme/theme_extension.dart';

class ExpandableDescription extends StatefulWidget {
  final String description;
  const ExpandableDescription({super.key, required this.description});

  @override
  State<ExpandableDescription> createState() => _ExpandableDescriptionState();
}

class _ExpandableDescriptionState extends State<ExpandableDescription> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        AnimatedCrossFade(
          firstChild: Text(
            widget.description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.bodyMedium,
          ),
          secondChild: Text(
            widget.description,
            style: context.textTheme.bodyMedium,
          ),
          crossFadeState: isExpanded
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          duration: const Duration(milliseconds: 250),
        ),
        GestureDetector(
          onTap: () => setState(() => isExpanded = !isExpanded),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              isExpanded ? "Read Less" : "Read More",
              style: TextStyle(
                color: context.colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
