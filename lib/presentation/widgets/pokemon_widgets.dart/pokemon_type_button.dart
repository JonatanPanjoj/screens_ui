import 'package:flutter/material.dart';

class PokemonTypeButton extends StatelessWidget {
  final Color color;
  final String lable;
  final IconData icon;

  const PokemonTypeButton({
    super.key,
    required this.color,
    required this.lable,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
        child: Row(
          children: [
            Icon(
              icon,
              size: 18,
            ),
            const SizedBox(width: 15),
            Text(
              lable,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
