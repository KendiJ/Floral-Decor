import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'room_selection_screen.dart';

class PlantDetailsScreen extends StatefulWidget {
  const PlantDetailsScreen({super.key});

  @override
  State<PlantDetailsScreen> createState() => _PlantDetailsScreenState();
}

class _PlantDetailsScreenState extends State<PlantDetailsScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _sizeAnimation;
  late final Animation<Offset> _humidityAnimation;
  late final Animation<Offset> _temperatureAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _sizeAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.6, curve: Curves.easeOut),
    ));

    _humidityAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.2, 0.8, curve: Curves.easeOut),
    ));

    _temperatureAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.4, 1.0, curve: Curves.easeOut),
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'home\ndecor',
                style: GoogleFonts.patrickHand(
                fontSize: 50,
                color: Colors.black,
              ),
              ),
              const Spacer(),
              Center(
                child: Image.asset('assets/images/ola.png', height: 300),
              ),
              const SizedBox(height: 32),
              const Text(
                'Decorative\nhouseplant',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 24),
              SlideTransition(
                position: _sizeAnimation,
                child: const Text(
                  'Size: Small',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 16),
              SlideTransition(
                position: _humidityAnimation,
                child: const Text(
                  'Humidity: 68%',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 16),
              SlideTransition(
                position: _temperatureAnimation,
                child: const Text(
                  'Temperature: 18-24°C',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const Spacer(),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RoomSelectionScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFEB3B),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Plant now',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF1B4332),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}