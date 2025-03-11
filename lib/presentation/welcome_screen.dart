import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indoor_floral_plants/presentation/plant_details_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B4332),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // const Spacer(),
            const SizedBox(height: 90),
            Text(
              'floral decor',
              style: GoogleFonts.patrickHand(
                fontSize: 80,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              'stylish plants for your living space',
              style: GoogleFonts.emilysCandy(
                fontSize: 30,
                color: const Color(0xFFFFEB3B),
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Stack(
              children: [
                Image.asset('assets/images/ola.png', height: 500),
                Spacer(),
                Positioned(
                  left: 150,
                  bottom: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const PlantDetailsScreen(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                                opacity: animation, child: child);
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFEB3B),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Get started',
                      style: TextStyle(
                        fontFamily: 'VT323',
                        fontSize: 18,
                        color: Color(0xFF1B4332),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
