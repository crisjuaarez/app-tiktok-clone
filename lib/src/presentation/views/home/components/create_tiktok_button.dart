import 'package:flutter/material.dart';

class CreateTikTokButton extends StatelessWidget {
  const CreateTikTokButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          colors: [
            Colors.lightBlueAccent,
            Colors.pink,
          ],
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: 30,
        width: 45,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Icon(Icons.add, color: Colors.black, size: 24),
      ),
    );
  }
}
