import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarBrandsSection extends StatelessWidget {
  const CarBrandsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.04),
      child: SizedBox(
        height: screenSize.height * 0.12,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          children: [
            _buildBrandItem('assets/images/tesla.jpg', 'Cadillac'),
            const SizedBox(width: 8),
            _buildBrandItem('assets/images/tesla.jpg', 'Tesla'),
            const SizedBox(width: 8),
            _buildBrandItem('assets/images/tesla.jpg', 'BMW'),
            const SizedBox(width: 8),
            _buildBrandItem('assets/images/tesla.jpg', 'Mazda'),
          ],
        ),
      ),
    );
  }

  Widget _buildBrandItem(String svgPath, String name) {
    return LayoutBuilder(builder: (context, constraints) {
      final screenSize = MediaQuery.of(context).size;

      return Container(
        margin: EdgeInsets.symmetric(horizontal: screenSize.width * 0.02),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: screenSize.width * 0.15,
              height: screenSize.width * 0.15,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                svgPath,
              ),
            ),
            SizedBox(height: screenSize.height * 0.01),
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
    });
  }
}
