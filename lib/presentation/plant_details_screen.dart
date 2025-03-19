import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:indoor_floral_plants/app/app_card.dart';

class PlantDetailsScreen extends StatefulWidget {
  const PlantDetailsScreen({super.key});

  @override
  _PlantDetailsScreenState createState() => _PlantDetailsScreenState();
}

class _PlantDetailsScreenState extends State<PlantDetailsScreen> {
  List<dynamic> flowers = [];
  List<dynamic> filteredFlowers = [];
  bool isLoading = true;
  bool hasError = false;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchFlowers();
  }

  Future<void> fetchFlowers() async {
    setState(() {
      isLoading = true;
      hasError = false;
    });

    try {
      final response = await http.get(Uri.parse('http://localhost:8080'));

      if (response.statusCode == 200) {
        setState(() {
          flowers = json.decode(response.body);
          filteredFlowers = flowers;
          isLoading = false;
        });
      } else {
        throw Exception('Failed to load flowers');
      }
    } catch (e) {
      setState(() {
        hasError = true;
        isLoading = false;
      });
    }
  }

  void filterPlants() {
    String query = searchController.text.toLowerCase();
    setState(() {
      filteredFlowers = flowers
          .where((flower) => flower['name'].toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F2E7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.black),
            onPressed: fetchFlowers,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
                'Choose\nyour Space',
                style: GoogleFonts.patrickHand(
                  fontSize: 40,
                  color: const Color(0xFF1B4332),
                ),
              ),
            const SizedBox(height: 8),
            const Text(
              "A collection of beautifully curated flowers from around the world.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: "Search for a plant...",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                InkWell(
                  onTap: filterPlants,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Icon(Icons.search, color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : hasError
                      ? const Center(
                          child: Text(
                            "Failed to load data. Check your connection!",
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                        )
                      : MasonryGridView.builder(
                          gridDelegate:
                              const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemCount: filteredFlowers.length,
                          itemBuilder: (context, index) {
                            var flower = filteredFlowers[index];
                            return FlowerCard(flower: flower);
                          },
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
