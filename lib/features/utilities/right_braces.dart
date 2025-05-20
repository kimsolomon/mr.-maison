import 'package:flutter/material.dart';

class RightBraces extends StatelessWidget {
  const RightBraces({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var mediaQuery = MediaQuery.of(context);
        double screenWidth = mediaQuery.size.width;
        double screenHeight = mediaQuery.size.height;
        // Determine the device type based on screen width
        bool isMobile = screenWidth <= 600;
        bool isTablet = screenWidth > 600 && screenWidth <= 1024;
        bool isDesktop = screenWidth > 1024;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: isMobile
                  ? screenWidth * 0.03 // Slightly wider for mobile
                  : isTablet
                      ? screenWidth * 0.025
                      : screenWidth * 0.02,
              height: isMobile
                  ? screenHeight * 0.007 // Slightly taller for mobile
                  : isTablet
                      ? screenHeight * 0.006
                      : screenHeight * 0.005,
              color: Colors.grey[800],
            ),
            Container(
              width: isMobile
                  ? screenWidth * 0.005
                  : isTablet
                      ? screenWidth * 0.0045
                      : screenWidth * 0.004,
              height: isMobile
                  ? screenHeight * 0.12 // Taller for mobile
                  : isTablet
                      ? screenHeight * 0.12
                      : screenHeight * 0.32,
              color: Colors.grey[800],
            ),
            Container(
              width: isMobile
                  ? screenWidth * 0.03
                  : isTablet
                      ? screenWidth * 0.025
                      : screenWidth * 0.02,
              height: isMobile
                  ? screenHeight * 0.007
                  : isTablet
                      ? screenHeight * 0.006
                      : screenHeight * 0.005,
              color: Colors.grey[800],
            ),
          ],
        );
      },
    );
  }
}
