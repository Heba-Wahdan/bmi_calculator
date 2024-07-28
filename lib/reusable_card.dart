import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    required this.containerColor,
    this.cardChild,
    this.onClick,
    super.key,
  });

  // ignore: prefer_typing_uninitialized_variables
  final Color containerColor;
  final Widget? cardChild;
  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: containerColor,
        ),
        child: cardChild,
      ),
    );
  }
}
