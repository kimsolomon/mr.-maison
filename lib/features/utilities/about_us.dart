import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

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
        var mediaquery = MediaQuery.of(context).size;
        double screenWidth = mediaquery.width;
        double screenHeight = mediaquery.height;
        double borderRadius = mediaquery.width * 0.01;

        bool isMobile = screenWidth <= 600;
        bool isTablet = screenWidth > 600 && screenWidth <= 1024;
        bool isDesktop = screenWidth > 1024;

        return Container(
          height: isMobile
              ? screenHeight * 0.3
              : isTablet
                  ? screenHeight * 0.4
                  : screenHeight * 0.6,
          width: isMobile
              ? screenWidth * 0.8
              : isTablet
                  ? screenWidth * 0.8
                  : screenWidth * 0.8,
          child: Row(
            children: [
              Expanded(
                flex: 4, // 40% width
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(borderRadius),
                    bottomLeft: Radius.circular(borderRadius),
                    topRight: Radius.circular(borderRadius),
                    bottomRight: Radius.circular(borderRadius),
                  ),
                  child: Container(
                    height: isMobile
                        ? screenHeight * 0.2
                        : isTablet
                            ? screenHeight * 0.4
                            : screenHeight * 0.6,
                    child: Image.network(
                      'https://res.cloudinary.com/dfviiik1w/image/upload/v1742039205/aboutus_photo_l7ivio.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5, // 50% width
                child: Container(
                  height: isMobile
                      ? screenHeight * 0.2
                      : isTablet
                          ? screenHeight * 0.4
                          : screenHeight * 0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: isMobile
                                  ? screenWidth *
                                      0.05 // 5% of screen height for mobile
                                  : isTablet
                                      ? screenWidth *
                                          0.035 // 7% of screen height for tablet
                                      : screenWidth * 0.04,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  color: Colors.red,
                                  height: isMobile
                                      ? screenHeight * 0.05
                                      : isTablet
                                          ? screenHeight * 0.1
                                          : screenHeight * 0.1,
                                  width: isMobile
                                      ? screenWidth *
                                          0.05 // 5% of screen height for mobile
                                      : isTablet
                                          ? screenWidth *
                                              0.08 // 7% of screen height for tablet
                                          : screenWidth * 0.05,
                                  child: Image.asset(
                                    'assets/images/star.jpeg',
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              left: isMobile
                                  ? screenWidth *
                                      0.05 // 5% of screen height for mobile
                                  : isTablet
                                      ? screenWidth *
                                          0.035 // 7% of screen height for tablet
                                      : screenWidth * 0.04,
                            ),
                            child: Text(
                              'Effortless Elegance \nin every Room',
                              style: TextStyle(
                                height: 1.1,
                                // color: const Color(0xFFA89484),
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: isMobile
                                    ? screenWidth *
                                        0.04 // 5% of screen height for mobile
                                    : isTablet
                                        ? screenWidth *
                                            0.04 // 7% of screen height for tablet
                                        : screenWidth * 0.04,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: isMobile
                                  ? screenHeight * 0.01
                                  : isTablet
                                      ? screenHeight * 0.02
                                      : screenHeight * 0.025,
                              left: isMobile
                                  ? screenWidth *
                                      0.05 // 5% of screen height for mobile
                                  : isTablet
                                      ? screenWidth *
                                          0.035 // 7% of screen height for tablet
                                      : screenWidth * 0.04,
                            ),
                            child: Text(
                              textAlign: TextAlign.start,
                              // 'Mr. Maison Interiors and Furniture, we don’t just dress windows.'
                              // 'We craft timeless narratives for your walls,'
                              // 'blending the grandeur of royalty with modern sophistication. '
                              // 'Born from a legacy of meticulous craftsmanship, '
                              'our curtains and blinds are heirloom-quality masterpieces, '
                              'woven with opulent fabrics and adorned with details fit for a throne.',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: isMobile
                                    ? screenWidth *
                                        0.018 // 5% of screen height for mobile
                                    : isTablet
                                        ? screenWidth *
                                            0.02 // 7% of screen height for tablet
                                        : screenWidth * 0.0135,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: isMobile
                                  ? screenWidth *
                                      0.05 // 5% of screen height for mobile
                                  : isTablet
                                      ? screenWidth *
                                          0.035 // 7% of screen height for tablet
                                      : screenWidth * 0.04,
                              top: isMobile
                                  ? screenHeight * 0.01
                                  : isTablet
                                      ? screenHeight * 0.02
                                      : screenHeight * 0.025,
                            ),
                            child: GestureDetector(
                              onTap: () => _launchURL('https://wa.link/5lpe5n'),
                              child: Container(
                                height: isMobile
                                    ? screenHeight * 0.025
                                    : isTablet
                                        ? screenHeight * 0.024
                                        : screenHeight *
                                            0.044, // 9% for desktop
                                width: isMobile
                                    ? screenWidth * 0.25
                                    : isTablet
                                        ? screenWidth * 0.2
                                        : screenWidth * 0.15, // 50%
                                decoration: BoxDecoration(
                                  color: Color(0xFF7B685A),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Talk to an Expert',
                                      style: TextStyle(
                                        color: Color(0xFFFFDBA4),
                                        fontSize: mediaquery.width * 0.015,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(
                                      Icons.arrow_forward_outlined,
                                      color: Color(0xFFFFDBA4),
                                      size: mediaquery.width * 0.02,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
