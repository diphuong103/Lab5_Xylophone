import 'package:flutter/material.dart';

class XylophoneKey extends StatelessWidget {
  const XylophoneKey({
    required this.label,
    required this.solfege,
    required this.color,
    required this.onPressed,
    super.key,
  });

  final String label;
  final String solfege;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(14),
        elevation: 3,
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Spacer(),
                Text(
                  solfege,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.82),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(width: 12),
                const Icon(Icons.play_arrow_rounded, color: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
