import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnackbar(BuildContext context, String platform) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Membuka $platform...')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.camera_alt, color: Colors.blue),
          onPressed: () => _showSnackbar(context, 'Instagram'),
        ),
        IconButton(
          icon: const Icon(Icons.business, color: Colors.blue),
          onPressed: () => _showSnackbar(context, 'LinkedIn'),
        ),
        IconButton(
          icon: const Icon(Icons.code, color: Colors.blue),
          onPressed: () => _showSnackbar(context, 'GitHub'),
        ),
      ],
    );
  }
}