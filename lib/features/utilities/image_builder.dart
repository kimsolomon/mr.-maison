import 'package:flutter/material.dart';
import 'package:martin_project/features/third_page.dart';

class ImageBuilder extends StatelessWidget {
  ImageBuilder({super.key});

  final List<String> imageUrls = const [
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956563/wallsblindsnigeria-09032025-0031_bntbp3.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956544/wallsblindsnigeria-09032025-0023_bfbmnb.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956331/usointeriorcreative-10042025-0052_q5mrv0.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956533/wallsblindsnigeria-09032025-0006_vnydka.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956562/wallsblindsnigeria-09032025-0033_zelxsv.jpg',
  ];

  final List<String> imageDescriptions = [
    'Cozy Collection',
    'Luxe Collection',
    'Royal Collection',
    'Exotic Collection',
    'Modern Collection',
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var mediaQuery = MediaQuery.of(context);
        double screenWidth = mediaQuery.size.width;
        double screenHeight = mediaQuery.size.height;

        bool isMobile = screenWidth <= 600;
        bool isTablet = screenWidth > 600 && screenWidth <= 1024;
        bool isDesktop = screenWidth > 1024;

        // Responsive values
        double itemWidth = isMobile
            ? screenWidth * 0.38
            : isTablet
                ? screenWidth * 0.3
                : screenWidth * 0.23;

        double imageHeight = isMobile
            ? screenHeight * 0.8
            : isTablet
                ? screenHeight * 0.45
                : screenHeight * 0.7;

        double textFontSize = isMobile
            ? screenWidth * 0.02
            : isTablet
                ? screenWidth * 0.023
                : screenWidth * 0.01;

        double buttonSize = isMobile
            ? screenWidth * 0.12
            : isTablet
                ? screenWidth * 0.1
                : screenWidth * 0.08;

        return SizedBox(
          height: isMobile
              ? screenHeight * 0.3
              : isTablet
                  ? screenHeight * 0.45
                  : screenHeight * 0.6,
          width: screenWidth,
          child: ListView.builder(
            itemCount: imageUrls.length + 1,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              if (index == imageUrls.length) {
                return GestureDetector(
                  onTap: () {
                    // Button action
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ThirdPage()));
                    },
                    child: Container(
                      width: buttonSize,
                      height: buttonSize,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Color(0xFFFFDBA4)),
                      ),
                      child: const Icon(Icons.arrow_forward,
                          color: Color(0xFFFFDBA4), size: 30),
                    ),
                  ),
                );
              }

              return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: isMobile
                        ? screenWidth * 0.01
                        : isTablet
                            ? screenWidth * 0.02
                            : screenWidth * 0.008),
                child: GestureDetector(
                  onTap: () => _openImageViewer(context, index),
                  child: Container(
                    width: itemWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            imageUrls[index],
                            fit: BoxFit.cover,
                            width: itemWidth,
                            height: imageHeight,
                            loadingBuilder: (context, child, progress) {
                              if (progress == null) return child;
                              return const Center(
                                  child: CircularProgressIndicator());
                            },
                            errorBuilder: (context, error, stackTrace) {
                              return const Center(
                                  child: Icon(Icons.error, color: Colors.red));
                            },
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Container(
                            height: isMobile
                                ? screenHeight *
                                    0.02 // 7% of screen height for mobile
                                : isTablet
                                    ? screenHeight * 0.025 // 8% for tablet
                                    : screenHeight * 0.03, // 9% for desktop
                            width: isMobile
                                ? screenWidth *
                                    0.2 // 70% of screen width for mobile
                                : isTablet
                                    ? screenWidth * 0.2 // 60% for tablet
                                    : screenWidth * 0.1, // 5
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              imageDescriptions[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: textFontSize,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  void _openImageViewer(BuildContext context, int initialIndex) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.black,
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: PageView.builder(
              itemCount: imageUrls.length,
              controller: PageController(initialPage: initialIndex),
              itemBuilder: (context, index) {
                return InteractiveViewer(
                  panEnabled: false,
                  boundaryMargin: const EdgeInsets.all(20),
                  minScale: 0.5,
                  maxScale: 3.0,
                  child: Image.network(imageUrls[index], fit: BoxFit.contain),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
