import 'package:flutter/material.dart';
import 'package:martin_project/features/second_page.dart';
import 'package:martin_project/features/utilities/all_grid.dart';
import 'package:martin_project/features/utilities/blind_grid.dart';
import 'package:martin_project/features/utilities/cotton_grid.dart';
import 'package:url_launcher/url_launcher.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  String selectedCategory = 'All'; // 👈 Moved outside build method

  void _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint("Could not launch $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;

        bool isMobile = screenWidth <= 600;
        bool isTablet = screenWidth > 600 && screenWidth <= 1024;

        return Container(
          width: screenWidth,
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // 📸 Top image and intro text section remains unchanged
                SizedBox(
                  width: screenWidth,
                  height: isMobile
                      ? screenHeight * 0.5
                      : isTablet
                          ? screenHeight * 0.6
                          : screenHeight * 0.8,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        'https://res.cloudinary.com/dfviiik1w/image/upload/v1742034293/new_landing_photo_sp1tuh.jpg',
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.8),
                        child: Column(
                          children: [
                            // Maison Logo
                            Padding(
                              padding: EdgeInsets.only(
                                top: isMobile
                                    ? screenHeight * 0.03
                                    : screenHeight * 0.02,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SecondPage()));
                                    },
                                    icon: Icon(
                                      Icons.arrow_back,
                                      size: isMobile
                                          ? screenWidth *
                                              0.05 // Bigger icon for mobile
                                          : isTablet
                                              ? screenWidth *
                                                  0.04 // Medium icon for tablet
                                              : screenWidth * 0.03,
                                      color: Colors.white,
                                    ),
                                  ),
                                  // Center(
                                  //   child: SizedBox(
                                  //     height: screenHeight * 0.05,
                                  //     child: Image.asset(
                                  //       'assets/images/maison_logo.jpg',
                                  //       fit: BoxFit.contain,
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                            // Title
                            Padding(
                              padding: EdgeInsets.only(
                                top: isMobile
                                    ? screenHeight * 0.1
                                    : screenHeight * 0.08,
                              ),
                              child: Text(
                                'A Showcase of Elegance and Craftsmanship',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: isMobile
                                      ? screenWidth * 0.07
                                      : isTablet
                                          ? screenWidth * 0.06
                                          : screenWidth * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // Description
                            Padding(
                              padding: EdgeInsets.only(
                                top: screenHeight * 0.02,
                                left: screenWidth * 0.1,
                                right: screenWidth * 0.1,
                              ),
                              child: Text(
                                textAlign: TextAlign.center,
                                "Every space tells a story, and we’re proud to have played a part in bringing those stories to life through fabric, texture, and thoughtful design. This gallery is a curated collection of our past projects — a showcase of craftsmanship, dedication, and the subtle beauty that the right curtain can bring into a room. From elegant drapes in minimalist living rooms to bold, custom designs in luxury interiors.",
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: isMobile
                                      ? screenWidth * 0.018
                                      : isTablet
                                          ? screenWidth * 0.02
                                          : screenWidth * 0.0135,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: isMobile
                                    ? screenHeight *
                                        0.02 // 5% of screen height for mobile
                                    : isTablet
                                        ? screenHeight *
                                            0.08 // 7% of screen height for tablet
                                        : screenHeight * 0.1,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () =>
                                        _launchURL('https://wa.link/5lpe5n'),
                                    child: Container(
                                      height: isMobile
                                          ? screenHeight *
                                              0.06 // 7% of screen height for mobile
                                          : isTablet
                                              ? screenHeight *
                                                  0.07 // 8% for tablet
                                              : screenHeight *
                                                  0.08, // 9% for desktop
                                      width: isMobile
                                          ? screenWidth *
                                              0.6 // 70% of screen width for mobile
                                          : isTablet
                                              ? screenWidth *
                                                  0.4 // 60% for tablet
                                              : screenWidth *
                                                  0.3, // 50% for desktop
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF7B685A),
                                        borderRadius: BorderRadius.circular(
                                            screenHeight * 0.3),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Talk to Expert',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: isMobile
                                                  ? screenWidth *
                                                      0.04 // Bigger text for mobile
                                                  : isTablet
                                                      ? screenWidth *
                                                          0.03 // Medium text for tablet
                                                      : screenWidth *
                                                          0.015, // Smaller text for desktop
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Icon(
                                            Icons.arrow_forward_outlined,
                                            color: Colors.white,
                                            size: isMobile
                                                ? screenWidth *
                                                    0.05 // Bigger icon for mobile
                                                : isTablet
                                                    ? screenWidth *
                                                        0.04 // Medium icon for tablet
                                                    : screenWidth *
                                                        0.03, // Smaller icon for desktop
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // 🧭 Category Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                      ['All', 'Curtains', 'Window Blinds'].map((category) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategory = category;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(
                          category,
                          style: TextStyle(
                            fontSize: isMobile
                                ? screenWidth *
                                    0.031 // 5% of screen height for mobile
                                : isTablet
                                    ? screenWidth *
                                        0.023 // 7% of screen height for tablet
                                    : screenWidth * 0.02,
                            color: selectedCategory == category
                                ? Colors.white
                                : Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),

                const SizedBox(height: 30),

                // 🔁 AnimatedSwitcher for changing content
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  transitionBuilder: (child, animation) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(1, 0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    );
                  },
                  child: _buildGallery(selectedCategory, screenHeight),
                ),

                const SizedBox(height: 50),
              ],
            ),
          ),
        );
      }),
    );
  }

  // 🖼 Gallery for each category
  Widget _buildGallery(String category, double height) {
    switch (category) {
      case 'Curtains':
        return Container(
            key: const ValueKey('Curtains'),
            height: height * 0.7,
            color: Colors.black,
            child: CottonGrid());

      case 'Window Blinds':
        return Container(
            key: const ValueKey('Window Blinds'),
            height: height * 0.7,
            color: Colors.black,
            child: BlindGrid());
      case 'All':
      default:
        return Container(
            key: const ValueKey('ALL'),
            height: height * 0.7,
            color: Colors.black,
            child: AllGrid());
    }
  }
}
