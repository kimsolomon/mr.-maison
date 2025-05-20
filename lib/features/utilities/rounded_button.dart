import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key});

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
    return LayoutBuilder(
      builder: (context, constraints) {
        // Get the screen width using LayoutBuilder
        double screenwidth = constraints.maxWidth;

        // Use MediaQuery to get screen dimensions
        var mediaQuery = MediaQuery.of(context);
        double screenWidth = mediaQuery.size.width;
        double screenHeight = mediaQuery.size.height;

        // Determine the device type based on screen width
        bool isMobile = screenwidth <= 600;
        bool isTablet = screenwidth > 600 && screenwidth <= 1024;
        bool isDesktop = screenwidth > 1024;

        return GestureDetector(
          onTap: () => _launchURL('https://wa.link/5lpe5n'),
          child: Container(
            height: isMobile
                ? screenHeight * 0.06 // 7% of screen height for mobile
                : isTablet
                    ? screenHeight * 0.07 // 8% for tablet
                    : screenHeight * 0.08, // 9% for desktop
            width: isMobile
                ? screenWidth * 0.6 // 70% of screen width for mobile
                : isTablet
                    ? screenWidth * 0.4 // 60% for tablet
                    : screenWidth * 0.3, // 50% for desktop
            decoration: BoxDecoration(
              color: const Color(0xFF7B685A),
              borderRadius: BorderRadius.circular(screenHeight * 0.3),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Talk to an Expert',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isMobile
                        ? screenWidth * 0.04 // Bigger text for mobile
                        : isTablet
                            ? screenWidth * 0.03 // Medium text for tablet
                            : screenWidth * 0.015, // Smaller text for desktop
                  ),
                ),
                const SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.white,
                  size: isMobile
                      ? screenWidth * 0.05 // Bigger icon for mobile
                      : isTablet
                          ? screenWidth * 0.04 // Medium icon for tablet
                          : screenWidth * 0.03, // Smaller icon for desktop
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
