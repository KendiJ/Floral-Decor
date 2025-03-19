import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indoor_floral_plants/presentation/plant_details_screen.dart';

class RoomSelectionScreen extends StatelessWidget {
  const RoomSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F2E8), // Cream background color
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back button and profile
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     IconButton(
              //       icon: const Icon(Icons.arrow_back),
              //       onPressed: () => Navigator.pop(context),
              //     ),
              //     const CircleAvatar(
              //       radius: 20,
              //       backgroundColor: Color(0xFFD2B48C),
              //     ),
              //   ],
              // ),
              const SizedBox(height: 20),
              // Title
              Text(
                'Choose\nyour place',
                style: GoogleFonts.patrickHand(
                  fontSize: 40,
                  color: const Color(0xFF1B4332),
                ),
              ),
              const SizedBox(height: 40),
              // Room options
              Expanded(
                child: Stack(
                  children: [
                    
                    SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              _buildRoomOption(
                                context,
                                'Living room',
                                'assets/space/living.jpeg',
                                // isSelected: true,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              _buildRoomOption(
                                context,
                                'Kitchen',
                                'assets/space/kitchen.jpeg',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              _buildRoomOption(
                                context,
                                'Bathroom',
                                'assets/space/bathroom.jpeg',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              _buildRoomOption(
                                context,
                                'Bedroom',
                                'assets/space/bedroom.jpeg',
                                // isSelected: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Room circles
                  ],
                ),
              ),
              // Menu button at bottom
              Center(
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1B4332),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Icon(
                    Icons.grid_view_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRoomOption(
    BuildContext context,
    String title,
    String imagePath, {
    bool isSelected = false,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const PlantDetailsScreen(),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? const Color(0xFF1B4332) : Colors.white,
              border: Border.all(
                color: const Color(0xFF1B4332),
                width: 2,
              ),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: isSelected
                ? const Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 40,
                    ),
                  )
                : null,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: GoogleFonts.patrickHand(
              fontSize: 25,
              color: const Color(0xFF1B4332),
            ),
          ),
        ],
      ),
    );
  }
}
