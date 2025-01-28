import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarBrandsSection extends StatelessWidget {
  const CarBrandsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 90,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          children: [
            _buildBrandItem('assets/images/car1.jpg', 'Cadillac'),
            const SizedBox(width: 8),
            _buildBrandItem('assets/images/car2.jpg', 'Tesla'),
            const SizedBox(width: 8),
            _buildBrandItem('assets/images/car1.jpg', 'BMW'),
            const SizedBox(width: 8),
            _buildBrandItem('assets/images/car2.jpg', 'Mazda'),
          ],
        ),
      ),
    );
  }

  Widget _buildBrandItem(String svgPath, String name) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              svgPath,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: GoogleFonts.inter(
              fontSize: 12,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
