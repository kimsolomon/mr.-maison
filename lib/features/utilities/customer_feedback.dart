import 'package:flutter/material.dart';

class CustomerFeedback extends StatelessWidget {
  const CustomerFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var mediaquery = MediaQuery.of(context).size;

        double screenWidth = mediaquery.width;
        double screenHeight = mediaquery.height;

        bool isMobile = screenWidth <= 600;
        bool isTablet = screenWidth > 600 && screenWidth <= 1024;
        bool isDesktop = screenWidth > 1024;

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              'What our happy client \nsay about us',
              style: TextStyle(
                height: 1.1,
                fontSize: isMobile
                    ? screenWidth * 0.03
                    : isTablet
                        ? screenWidth * 0.03
                        : screenWidth * 0.015,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: mediaquery.width * 0.4,
                  height: isMobile
                      ? screenHeight * 0.2
                      : isTablet
                          ? screenHeight * 0.25
                          : screenHeight * 0.4,
                  decoration: BoxDecoration(
                    color: const Color(0xFF333333),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: isMobile
                          ? screenHeight * 0.02 // Taller for mobile
                          : isTablet
                              ? screenHeight * 0.02
                              : screenHeight * 0.04,
                      left: isMobile
                          ? screenWidth * 0.03
                          : isTablet
                              ? screenWidth * 0.03
                              : screenWidth * 0.015,
                      right: isMobile
                          ? screenWidth * 0.03
                          : isTablet
                              ? screenWidth * 0.03
                              : screenWidth * 0.015,
                    ),
                    child: Column(
                      children: [
                        Text(
                          textAlign: TextAlign.left,
                          'I couldn’t be happier with the service I received! From the moment '
                          'I contacted him, he was professional, friendly, and incredibly knowledgeable about curtains '
                          'and interior décor. He helped me choose the perfect fabric and design for my space, '
                          'and the installation was fast and flawless..',
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: isMobile
                                ? screenWidth * 0.018
                                : isTablet
                                    ? screenWidth * 0.018
                                    : screenWidth * 0.015,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: isMobile
                                ? screenWidth * 0.03
                                : isTablet
                                    ? screenWidth * 0.02
                                    : screenWidth * 0.015,
                            top: isMobile
                                ? screenHeight * 0.03 // Taller for mobile
                                : isTablet
                                    ? screenHeight * 0.02
                                    : screenHeight * 0.04,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Container(
                              //   width: isMobile
                              //       ? screenWidth * 0.03
                              //       : isTablet
                              //           ? screenWidth * 0.02
                              //           : screenWidth * 0.03,
                              //   height: isMobile
                              //       ? screenHeight * 0.03 // Taller for mobile
                              //       : isTablet
                              //           ? screenHeight * 0.02
                              //           : screenHeight * 0.07,
                              //   decoration: BoxDecoration(
                              //       shape: BoxShape.circle, color: Colors.red),
                              //   child: Image.asset(
                              //     'assets/images/woman.jpg',
                              //     fit: BoxFit.cover,
                              //     //   ),
                              //   ),
                              // ),
                              CircleAvatar(
                                radius: isMobile
                                    ? screenWidth * 0.025
                                    : isTablet
                                        ? screenWidth * 0.025
                                        : screenWidth * 0.02,
                                backgroundImage:
                                    AssetImage('assets/images/woman.jpg'),
                              ),
                              Text(
                                '— Mrs. Amina O.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: isMobile
                                      ? screenWidth * 0.03
                                      : isTablet
                                          ? screenWidth * 0.02
                                          : screenWidth * 0.015,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    width: isMobile
                        ? screenWidth * 0.04
                        : isTablet
                            ? screenWidth * 0.023
                            : screenWidth * 0.01),
                Container(
                  width: mediaquery.width * 0.4,
                  height: isMobile
                      ? screenHeight * 0.2
                      : isTablet
                          ? screenHeight * 0.25
                          : screenHeight * 0.4,
                  decoration: BoxDecoration(
                    color: const Color(0xFF333333),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: isMobile
                          ? screenHeight * 0.02 // Taller for mobile
                          : isTablet
                              ? screenHeight * 0.02
                              : screenHeight * 0.04,
                      left: isMobile
                          ? screenWidth * 0.03
                          : isTablet
                              ? screenWidth * 0.03
                              : screenWidth * 0.015,
                      right: isMobile
                          ? screenWidth * 0.03
                          : isTablet
                              ? screenWidth * 0.03
                              : screenWidth * 0.015,
                    ),
                    child: Column(
                      children: [
                        Text(
                          textAlign: TextAlign.left,
                          'I’m beyond impressed with the quality of the curtains and the level of service '
                          'I received. He took the time to understand exactly what '
                          'I wanted and gave great advice on colors and materials that would complement my home. '
                          'The installation was neat and timely, and the final look exceeded my expectations. ',
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: isMobile
                                ? screenWidth * 0.018
                                : isTablet
                                    ? screenWidth * 0.018
                                    : screenWidth * 0.015,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: isMobile
                                ? screenWidth * 0.03
                                : isTablet
                                    ? screenWidth * 0.02
                                    : screenWidth * 0.015,
                            top: isMobile
                                ? screenHeight * 0.02 // Taller for mobile
                                : isTablet
                                    ? screenHeight * 0.02
                                    : screenHeight * 0.04,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: isMobile
                                    ? screenWidth * 0.025
                                    : isTablet
                                        ? screenWidth * 0.025
                                        : screenWidth * 0.02,
                                backgroundImage: AssetImage(
                                  'assets/images/man.jpg',
                                ),
                              ),
                              Text(
                                '— Mr. Fetimi T.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: isMobile
                                      ? screenWidth * 0.03
                                      : isTablet
                                          ? screenWidth * 0.02
                                          : screenWidth * 0.015,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
