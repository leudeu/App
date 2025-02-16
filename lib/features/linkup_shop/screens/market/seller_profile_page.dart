import 'package:flutter/material.dart';

class SellerProfile extends StatelessWidget {
  final String? image;
  final String? name;
  final String? phoneNumber;
  final VoidCallback onTap;

  const SellerProfile({
    super.key,
    required this.image,
    required this.name,
    required this.phoneNumber,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: image != null ? AssetImage(image!) as ImageProvider : null, // No default image
              child: image == null ? Icon(Icons.person) : null, // Show an icon if no image
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name ?? 'Unknown', // Provide a default name
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  phoneNumber ?? 'N/A', // Provide a default phone number
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
