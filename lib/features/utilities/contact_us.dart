import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

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

        final isMobile = screenWidth <= 600;
        final isTablet = screenWidth > 600 && screenWidth <= 1024;
        final isDesktop = screenWidth > 1024;

        // Responsive sizes
        final double iconSize = isMobile
            ? screenWidth * 0.06
            : isTablet
                ? screenWidth * 0.035
                : screenWidth * 0.03;

        final double textSize = isMobile
            ? screenWidth * 0.02
            : isTablet
                ? screenWidth * 0.02
                : screenWidth * 0.015;

        final double spacing =
            isMobile ? screenWidth * 0.02 : screenWidth * 0.015;

        final double verticalPadding =
            isMobile ? screenHeight * 0.01 : screenHeight * 0.008;

        return Center(
          child: Container(
            width: screenWidth,
            height: isMobile
                ? screenHeight * 0.4 // 40% of screen height for mobile
                : isTablet
                    ? screenHeight * 0.6 // 50% of screen height for tablet
                    : screenHeight * 0.7, //
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  'https://res.cloudinary.com/dfviiik1w/image/upload/v1742034293/new_landing_photo_sp1tuh.jpg',
                  fit: BoxFit.cover,
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.9,
                  color: Colors.black.withOpacity(0.8),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: isMobile
                        ? screenHeight * 0.08 // Taller for mobile
                        : isTablet
                            ? screenHeight * 0.08
                            : screenHeight * 0.07,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'Testimonial',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: isMobile
                                ? screenWidth *
                                    0.03 // 5% of screen height for mobile
                                : isTablet
                                    ? screenWidth *
                                        0.05 // 7% of screen height for tablet
                                    : screenWidth * 0.02,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: isMobile
                                ? screenHeight * 0.02 // Taller for mobile
                                : isTablet
                                    ? screenHeight * 0.04
                                    : screenHeight * 0.04,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '"',
                                style: TextStyle(
                                  fontSize: isMobile
                                      ? screenWidth *
                                          0.04 // 5% of screen height for mobile
                                      : isTablet
                                          ? screenWidth *
                                              0.04 // 7% of screen height for tablet
                                          : screenWidth * 0.02,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[400],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: isMobile
                              ? screenWidth * 0.7
                              : isTablet
                                  ? screenWidth * 0.7
                                  : screenWidth * 0.4,
                          child: Text(
                            'I recently purchased from Mr. Maison Interiors,\nand the service was exceptional.\nHighly recommend!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontStyle: FontStyle.italic,
                              fontSize: isMobile
                                  ? screenWidth * 0.03
                                  : isTablet
                                      ? screenWidth * 0.03
                                      : screenWidth * 0.017,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: isMobile
                                ? screenHeight * 0.02 // Taller for mobile
                                : isTablet
                                    ? screenHeight * 0.04
                                    : screenHeight * 0.04,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Peter F.Martins',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontStyle: FontStyle.italic,
                                  fontSize: isMobile
                                      ? screenWidth * 0.02
                                      : isTablet
                                          ? screenWidth * 0.02
                                          : screenWidth * 0.01,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: isMobile
                                ? screenHeight * 0.02 // Taller for mobile
                                : isTablet
                                    ? screenHeight * 0.04
                                    : screenHeight * 0.04,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                                size: isMobile
                                    ? screenWidth * 0.03
                                    : isTablet
                                        ? screenWidth * 0.03
                                        : screenWidth * 0.017,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      color: Color(0xFF1F2124),
                      height: isMobile
                          ? screenHeight * 0.07
                          : isTablet
                              ? screenHeight * 0.08
                              : screenHeight * 0.1,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: isMobile
                                  ? screenHeight * 0.02
                                  : isTablet
                                      ? screenHeight * 0.02
                                      : screenHeight * 0.02,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: isMobile
                                            ? screenWidth *
                                                0.018 // 5% of screen height for mobile
                                            : isTablet
                                                ? screenWidth *
                                                    0.02 // 7% of screen height for tablet
                                                : screenWidth * 0.0135,
                                      ),
                                      child: Icon(
                                        Icons.call,
                                        color: Colors.white,
                                        size: isMobile
                                            ? screenWidth *
                                                0.018 // 5% of screen height for mobile
                                            : isTablet
                                                ? screenWidth *
                                                    0.02 // 7% of screen height for tablet
                                                : screenWidth * 0.015,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: isMobile
                                            ? screenWidth *
                                                0.018 // 5% of screen height for mobile
                                            : isTablet
                                                ? screenWidth *
                                                    0.02 // 7% of screen height for tablet
                                                : screenWidth * 0.0135,
                                      ),
                                      child: Text(
                                        '+234 8133764493',
                                        style: TextStyle(
                                          fontSize: isMobile
                                              ? screenWidth * 0.03
                                              : isTablet
                                                  ? screenWidth * 0.02
                                                  : screenWidth * 0.015,
                                          color: Colors.white,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: isMobile
                                        ? screenWidth *
                                            0.018 // 5% of screen height for mobile
                                        : isTablet
                                            ? screenWidth *
                                                0.02 // 7% of screen height for tablet
                                            : screenWidth * 0.0135,
                                  ),
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () => _launchURL(
                                            'https://www.facebook.com/profile.php?id=61564647222756'),
                                        child: SvgPicture.asset(
                                          'assets/images/icons8-facebook.svg',

                                          width: isMobile
                                              ? screenWidth *
                                                  0.02 // 5% of screen height for mobile
                                              : isTablet
                                                  ? screenWidth *
                                                      0.02 // 7% of screen height for tablet
                                                  : screenWidth * 0.0135,
                                          // optional
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: isMobile
                                              ? screenWidth *
                                                  0.02 // 5% of screen height for mobile
                                              : isTablet
                                                  ? screenWidth *
                                                      0.02 // 7% of screen height for tablet
                                                  : screenWidth * 0.01,
                                        ),
                                        child: GestureDetector(
                                          onTap: () => _launchURL(
                                              'https://wa.link/5lpe5n'),
                                          child: SvgPicture.asset(
                                            'assets/images/icons8-whatsapp.svg',
                                            width: isMobile
                                                ? screenWidth *
                                                    0.02 // 5% of screen height for mobile
                                                : isTablet
                                                    ? screenWidth *
                                                        0.02 // 7% of screen height for tablet
                                                    : screenWidth * 0.0135,
                                            // optional
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () => _launchURL(
                                            'https://www.instagram.com/phcity_luxecurtains?utm_source=qr&r=nametag'),
                                        child: SvgPicture.asset(
                                          'assets/images/icons8-instagram.svg',

                                          width: isMobile
                                              ? screenWidth *
                                                  0.018 // 5% of screen height for mobile
                                              : isTablet
                                                  ? screenWidth *
                                                      0.02 // 7% of screen height for tablet
                                                  : screenWidth * 0.0135,
                                          // optional
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Mr Maison Fumiture and Interirors@2025. All Rights Reserved',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: isMobile
                                      ? screenWidth *
                                          0.018 // 5% of screen height for mobile
                                      : isTablet
                                          ? screenWidth *
                                              0.02 // 7% of screen height for tablet
                                          : screenWidth * 0.0135,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildContactRow({
    required String imagePath,
    required String text,
    required String url,
    required double iconSize,
    required double textSize,
    required double spacing,
    required double verticalPadding,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding),
      child: GestureDetector(
        onTap: () => _launchURL(url),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: iconSize,
            ),
            SizedBox(width: spacing),
            Flexible(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: textSize,
                  color: const Color(0xFFFFDBA4),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
