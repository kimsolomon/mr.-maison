import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key});

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
        var mediaQuery = MediaQuery.of(context);
        double screenWidth = mediaQuery.size.width;
        double screenHeight = mediaQuery.size.height;

        bool isMobile = screenWidth <= 600;
        bool isTablet = screenWidth > 600 && screenWidth <= 1024;
        bool isDesktop = screenWidth > 1024;

        // Responsive sizing
        double buttonHeight = isMobile
            ? screenHeight * 0.025
            : isTablet
                ? screenHeight * 0.026
                : screenHeight * 0.044;

        double buttonWidth = isMobile
            ? screenWidth * 0.25
            : isTablet
                ? screenWidth * 0.15
                : screenWidth * 0.15;

        double fontSize = isMobile
            ? screenWidth * 0.02
            : isTablet
                ? screenWidth * 0.015
                : screenWidth * 0.01;

        double iconSize = isMobile
            ? screenWidth * 0.02
            : isTablet
                ? screenWidth * 0.01
                : screenWidth * 0.01;

        return GestureDetector(
          onTap: () => _launchURL('https://wa.link/5lpe5n'),
          child: Container(
            height: buttonHeight,
            width: buttonWidth,
            decoration: BoxDecoration(
              color: const Color(0xFF7B685A),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Talk to an Expert',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize,
                  ),
                ),
                const SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.white,
                  size: iconSize,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
