import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Service extends StatelessWidget {
  const Service({super.key});

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
    return LayoutBuilder(builder: (context, constraints) {
      double screenwidth = constraints.maxWidth;

      // Use MediaQuery to get screen dimensions
      var mediaQuery = MediaQuery.of(context);
      double screenWidth = mediaQuery.size.width;
      double screenHeight = mediaQuery.size.height;

      // Determine the device type based on screen width
      bool isMobile = screenwidth <= 600;
      bool isTablet = screenwidth > 600 && screenwidth <= 1024;
      bool isDesktop = screenwidth > 1024;

      return Row(
        children: [
          Container(
            width: screenWidth * 0.6,
            height: isMobile
                ? screenHeight * 0.2
                : isTablet
                    ? screenHeight * 0.4
                    : screenHeight * 0.6,
            color: Color(0xFF31373F),
            child: Padding(
              padding: EdgeInsets.only(
                left: isMobile
                    ? screenWidth * 0.03 // 5% of screen height for mobile
                    : isTablet
                        ? screenWidth * 0.04 // 7% of screen height for tablet
                        : screenWidth * 0.08,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: [
                  //     Text(
                  //       'Services.',
                  //       style: TextStyle(
                  //         color: Color(0xFFB8860B),
                  //         fontSize: isMobile
                  //             ? screenWidth *
                  //                 0.02 // 5% of screen height for mobile
                  //             : isTablet
                  //                 ? screenWidth *
                  //                     0.02 // 7% of screen height for tablet
                  //                 : screenWidth * 0.0135,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Text(
                    'Luxurious Window Treatments Services:',
                    style: TextStyle(
                      height: 1.1,
                      // color: const Color(0xFFA89484),
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: isMobile
                          ? screenWidth *
                              0.033 // 5% of screen height for mobile
                          : isTablet
                              ? screenWidth *
                                  0.04 // 7% of screen height for tablet
                              : screenWidth * 0.03,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: isMobile
                              ? screenHeight * 0.01
                              : isTablet
                                  ? screenHeight * 0.02
                                  : screenHeight * 0.025,
                        ),
                        child: Text(
                          'Customized Turkish curtains and window blinds: Tailored to \nfit Your style..',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: isMobile
                                ? screenWidth *
                                    0.017 // 5% of screen height for mobile
                                : isTablet
                                    ? screenWidth *
                                        0.02 // 7% of screen height for tablet
                                    : screenWidth * 0.0135,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: [
                  //     Text(
                  //       'Royal, Day n Night, wooden, and Venetian blinds.',
                  //       style: TextStyle(
                  //         color: Colors.grey[400],
                  //         fontSize: isMobile
                  //             ? screenWidth *
                  //                 0.017 // 5% of screen height for mobile
                  //             : isTablet
                  //                 ? screenWidth *
                  //                     0.02 // 7% of screen height for tablet
                  //                 : screenWidth * 0.0135,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: isMobile
                          ? screenHeight * 0.01
                          : isTablet
                              ? screenHeight * 0.02
                              : screenHeight * 0.025,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => _launchURL('https://wa.link/5lpe5n'),
                          child: Container(
                            height: isMobile
                                ? screenHeight * 0.025
                                : isTablet
                                    ? screenHeight * 0.024
                                    : screenHeight * 0.044, // 9% for desktop
                            width: isMobile
                                ? screenWidth * 0.25
                                : isTablet
                                    ? screenWidth * 0.2
                                    : screenWidth * 0.15, // 50%
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Talk to an Expert',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: isMobile
                                        ? screenWidth * 0.02
                                        : isTablet
                                            ? screenWidth * 0.015
                                            : screenWidth * 0.01,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.arrow_forward_outlined,
                                  color: Colors.black,
                                  size: isMobile
                                      ? screenWidth * 0.02
                                      : isTablet
                                          ? screenWidth * 0.01
                                          : screenWidth * 0.01,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            height: isMobile
                ? screenHeight * 0.2
                : isTablet
                    ? screenHeight * 0.4
                    : screenHeight * 0.6,
            width: screenWidth * 0.4,
            child: Image.asset(
              'assets/images/service_photo.jpeg',
              fit: BoxFit.fill,
            ),
          ),
        ],
      );
    });
  }
}
