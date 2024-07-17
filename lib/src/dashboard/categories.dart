import 'package:bidhan_prohect/src/dashboard/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD4FCE4),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    // Handle back button press
                  },
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.shopping_cart),
                      onPressed: () {
                        // Handle cart button press
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.person),
                      onPressed: () {
                        Get.to(const ProfileScreen());
                      },
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  const Icon(Icons.search, color: Color(0xFF706060)),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for Products',
                        hintStyle: GoogleFonts.getFont(
                          'Roboto Condensed',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: const Color(0xFF706060),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Categories',
              style: GoogleFonts.getFont(
                'Roboto Condensed',
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: const Color(0xFF000000),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCategoryChip(
                    'All',
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRyX_ZPWyqk8VFCXe4QnGhAnK5gd28OfPjMw&s',
                  ),
                  _buildCategoryChip(
                    'Leafy greens',
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRyX_ZPWyqk8VFCXe4QnGhAnK5gd28OfPjMw&s',
                  ),
                  _buildCategoryChip(
                    'Root Vegetables',
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwITOPrrqywiHe2kmT6w2paaDVD3JJYEiBsg&s',
                  ),
                  _buildCategoryChip(
                    'Cruciferous',
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_segST6eQM_DDYlmBzvb3fNCjp5OuzFWAhA&s',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'All Items',
              style: GoogleFonts.getFont(
                'Roboto Condensed',
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: const Color(0xFF000000),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(4, (index) {
                  return _buildItemCard(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1ONLsNmWg9fNMjVgTpRVlv7PMUjNTtCYXKw&s',
                    'Item $index',
                    'Rs. ${index * 25 + 25}',
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String label, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Chip(
        avatar: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        label: Text(
          label,
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: const Color(0xFF000000),
          ),
        ),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  Widget _buildItemCard(String imageUrl, String title, String price) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: GoogleFonts.getFont(
                'Roboto Condensed',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: const Color(0xFF000000),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              price,
              style: GoogleFonts.getFont(
                'Roboto Condensed',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: const Color(0xFF706060),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle add to cart button press
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xC91B9527),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                'Add to Cart',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
