import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarBrandsSection extends StatelessWidget {
  const CarBrandsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          final brands = [
            ('assets/images/download.jpg', 'Cadillac'),
            ('assets/images/download.jpg', 'Tesla'),
            ('assets/images/download.jpg', 'BMW'),
            ('assets/images/download.jpg', 'Mazda'),
          ];
          return _buildBrandItem(brands[index].$1, brands[index].$2);
        },
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
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
