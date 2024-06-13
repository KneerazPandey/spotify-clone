import 'package:flutter/material.dart';
import 'package:spotify_frontend/core/theme/theme.dart';

class CustomGradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const CustomGradientButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: <Color>[
            AppColor.gradient1,
            AppColor.gradient2,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(size.width, 55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
