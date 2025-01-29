import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarBrandsSection extends StatelessWidget {
  const CarBrandsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90, // Fixed height for the brand section
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        children: [
          _buildBrandItem('assets/images/download.jpg', 'Cadillac'),
          _buildBrandItem('assets/images/download.jpg', 'Tesla'),
          _buildBrandItem('assets/images/download.jpg', 'BMW'),
          _buildBrandItem('assets/images/download.jpg', 'Mazda'),
        ],
      ),
    );
  }

  Widget _buildBrandItem(String imagePath, String name) {
    return Container(
      width: 80, // Fixed width for each brand item
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 60, // Fixed width for circle
            height: 60, // Fixed height for circle
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            name,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
