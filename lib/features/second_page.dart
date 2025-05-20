import 'package:flutter/material.dart';
import 'package:martin_project/features/utilities/about_us.dart';
import 'package:martin_project/features/utilities/contact_us.dart';
import 'package:martin_project/features/utilities/customer_feedback.dart';
import 'package:martin_project/features/utilities/faq_container.dart';
import 'package:martin_project/features/utilities/gallery_container.dart';
import 'package:martin_project/features/utilities/image_builder.dart';
import 'package:martin_project/features/utilities/left_braces.dart';
import 'package:martin_project/features/utilities/right_braces.dart';
import 'package:martin_project/features/utilities/rounded_button.dart';
import 'package:martin_project/features/utilities/service.dart';
import 'package:martin_project/features/utilities/social_button.dart';
import 'package:martin_project/features/utilities/text_container.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
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

          return Container(
            width: constraints.maxWidth, // Set width to full screen width
            height: constraints.maxHeight, // Set height to full screen height
            decoration: BoxDecoration(
              color: Color(0xFF23262D), // Fallback background color
              image: DecorationImage(
                image: const AssetImage(
                    "assets/images/tablet_template.png"), // Background image
                fit: BoxFit.cover, // Cover the entire container
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.9), // Dark overlay on the image
                  BlendMode.darken, // Blend mode for the overlay
                ),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Container with an image and an overlay
                  SizedBox(
                    width: constraints.maxWidth, // Make it full width
                    height: isMobile
                        ? screenHeight * 0.6 // 40% of screen height for mobile
                        : isTablet
                            ? screenHeight *
                                0.6 // 50% of screen height for tablet
                            : screenHeight * 0.8, // 60% for desktop
                    child: Stack(
                      fit: StackFit.expand, // Expand to fill available space
                      children: [
                        // Background Image (Loaded from network)
                        Image.network(
                          'https://res.cloudinary.com/dfviiik1w/image/upload/v1742034293/new_landing_photo_sp1tuh.jpg',
                          fit: BoxFit.cover, // Cover the container
                        ),
                        // Dark overlay to improve text visibility
                        Container(
                          width: constraints.maxWidth,
                          height: isMobile
                              ? screenHeight *
                                  0.6 // Same as the parent SizedBox
                              : isTablet
                                  ? screenHeight * 0.6
                                  : screenHeight * 0.8,
                          color: Colors.black.withOpacity(0.8),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: isMobile
                                      ? screenHeight *
                                          0.03 // Same as the parent SizedBox
                                      : isTablet
                                          ? screenHeight * 0.02
                                          : screenHeight * 0.02,
                                ),
                                child: Container(
                                  width: constraints.maxWidth,
                                  height: isMobile
                                      ? screenHeight * 0.02
                                      : isTablet
                                          ? screenHeight * 0.04
                                          : screenHeight * 0.07,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: isMobile
                                            ? screenHeight * 0.02
                                            : isTablet
                                                ? screenHeight * 0.04
                                                : screenHeight * 0.05,
                                        width: isMobile
                                            ? screenWidth * 0.05
                                            : isTablet
                                                ? screenWidth * 0.06
                                                : screenWidth * 0.05,
                                        child: Image.asset(
                                            'assets/images/maison_logo.jpg',
                                            fit: BoxFit.cover),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: screenWidth * 0.02,
                                        ),
                                        child: Text(
                                          'Mr Maison Interiors and Furnitures',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: isMobile
                                                ? screenWidth *
                                                    0.04 // 5% of screen height for mobile
                                                : isTablet
                                                    ? screenWidth *
                                                        0.03 // 7% of screen height for tablet
                                                    : screenWidth * 0.025,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: isMobile
                                      ? screenHeight *
                                          0.15 // 5% of screen height for mobile
                                      : isTablet
                                          ? screenHeight *
                                              0.08 // 7% of screen height for tablet
                                          : screenHeight * 0.2,
                                ), // 8% of screen height for desktop),
                                child: Text(
                                  'Elevate your Space with our \n Curtain Experts ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: isMobile
                                        ? screenWidth *
                                            0.07 // 5% of screen height for mobile
                                        : isTablet
                                            ? screenWidth *
                                                0.06 // 7% of screen height for tablet
                                            : screenWidth * 0.04,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: isMobile
                                      ? screenHeight *
                                          0.06 // 5% of screen height for mobile
                                      : isTablet
                                          ? screenHeight *
                                              0.08 // 7% of screen height for tablet
                                          : screenHeight * 0.1,
                                ),
                                child: RoundedButton(),
                              )
                            ],
                          ), // Dark overlay
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      top: isMobile
                          ? screenHeight * 0.08 // Taller for mobile
                          : isTablet
                              ? screenHeight * 0.1
                              : screenHeight * 0.2,
                      left: isMobile
                          ? screenWidth * 0.05
                          : isTablet
                              ? screenWidth * 0.08
                              : screenWidth * 0.18,
                    ),
                    child: Container(
                      width: constraints.maxWidth,
                      height: isMobile
                          ? screenHeight * 0.16 // Taller for mobile
                          : isTablet
                              ? screenHeight * 0.16
                              : screenHeight * 0.35,
                      child: Row(
                        children: [
                          LeftBraces(),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: isMobile
                                  ? screenHeight * 0.015 // Taller for mobile
                                  : isTablet
                                      ? screenHeight * 0.023
                                      : screenHeight * 0.025,
                            ),
                            child: Text(
                              '+3',
                              style: TextStyle(
                                  fontSize: isMobile
                                      ? screenWidth *
                                          0.07 // 5% of screen height for mobile
                                      : isTablet
                                          ? screenWidth *
                                              0.07 // 7% of screen height for tablet
                                          : screenWidth * 0.06,
                                  color: const Color(0xFF7B685A),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'year\n Guarantee',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: isMobile
                                    ? screenWidth *
                                        0.017 // 5% of screen height for mobile
                                    : isTablet
                                        ? screenWidth *
                                            0.021 // 7% of screen height for tablet
                                        : screenWidth * 0.015,
                                fontWeight: FontWeight.bold),
                          ),
                          RightBraces(),
                          SizedBox(
                            width: screenWidth * 0.06,
                          ),
                          // SizedBox(
                          //   width: screenWidth * 0.05,
                          // ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: isMobile
                                    ? screenHeight * 0.01 // Taller for mobile
                                    : isTablet
                                        ? screenHeight * 0.023
                                        : screenHeight * 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Expertly Crafted Luxury Turkish curtains \nand Window blinds ',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: const Color(0xFFA89484),
                                      // color: Color(0xFFD9A72E),
                                      fontSize: isMobile
                                          ? screenWidth *
                                              0.031 // 5% of screen height for mobile
                                          : isTablet
                                              ? screenWidth *
                                                  0.023 // 7% of screen height for tablet
                                              : screenWidth * 0.03,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Behind every exquisite Luxury Turkish curtain and precision-crafted \nwindow blind'
                                  'is a team of visionary designers, skilled artisans \nand meticulous perfectionists.',
                                  // \n '
                                  // 'With a relentless pursuit of excellence, \n we transform spaces into breathtaking masterpieces.',
                                  // textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: isMobile
                                          ? screenWidth *
                                              0.02 // 5% of screen height for mobile
                                          : isTablet
                                              ? screenWidth *
                                                  0.011 // 7% of screen height for tablet
                                              : screenWidth * 0.015,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: isMobile
                                      ? screenHeight * 0.01 // Taller for mobile
                                      : isTablet
                                          ? screenHeight * 0.023
                                          : screenHeight * 0.025,
                                ),
                                SocialButton(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: isMobile
                        ? screenHeight * 0.01 // Taller for mobile
                        : isTablet
                            ? screenHeight * 0.023
                            : screenHeight * 0.025,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile
                          ? screenWidth * 0.06 // 5% of screen height for mobile
                          : isTablet
                              ? screenWidth *
                                  0.07 // 7% of screen height for tablet
                              : screenWidth * 0.09,
                      vertical: isMobile
                          ? screenHeight * 0.04 // Taller for mobile
                          : isTablet
                              ? screenHeight * 0.06
                              : screenHeight * 0.08,
                    ),
                    child: ImageBuilder(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: isMobile
                          ? screenWidth * 0.1 // 5% of screen height for mobile
                          : isTablet
                              ? screenWidth *
                                  0.2 // 7% of screen height for tablet
                              : screenWidth * 0.2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                textAlign: TextAlign.start,
                                'Why work with Us :',
                                style: TextStyle(
                                  fontSize: isMobile
                                      ? screenWidth *
                                          0.025 // 5% of screen height for mobile
                                      : isTablet
                                          ? screenWidth *
                                              0.025 // 7% of screen height for tablet
                                          : screenWidth * 0.015,
                                  color: Color(0xFFB8860B),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                'We Deliver High-quality Service \nThat Exceeds Customer Expectations.',
                                style: TextStyle(
                                    fontSize: isMobile
                                        ? screenWidth *
                                            0.031 // 5% of screen height for mobile
                                        : isTablet
                                            ? screenWidth *
                                                0.023 // 7% of screen height for tablet
                                            : screenWidth * 0.03,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: isMobile
                        ? screenHeight * 0.04 // Taller for mobile
                        : isTablet
                            ? screenHeight * 0.06
                            : screenHeight * 0.08,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile
                          ? screenWidth * 0.02 // 5% of screen height for mobile
                          : isTablet
                              ? screenWidth *
                                  0.023 // 7% of screen height for tablet
                              : screenWidth * 0.02,
                    ),
                    child: TextContainer(),
                  ),
                  SizedBox(
                    height: isMobile
                        ? screenHeight * 0.04 // Taller for mobile
                        : isTablet
                            ? screenHeight * 0.06
                            : screenHeight * 0.08,
                  ),
                  GalleryContainer(),
                  SizedBox(
                    height: isMobile
                        ? screenHeight * 0.02 // Taller for mobile
                        : isTablet
                            ? screenHeight * 0.08
                            : screenHeight * 0.2,
                  ),
                  AboutUs(),
                  SizedBox(
                    height: isMobile
                        ? screenHeight * 0.02 // Taller for mobile
                        : isTablet
                            ? screenHeight * 0.08
                            : screenHeight * 0.2,
                  ),
                  CustomerFeedback(),
                  SizedBox(
                    height: isMobile
                        ? screenHeight * 0.08 // Taller for mobile
                        : isTablet
                            ? screenHeight * 0.1
                            : screenHeight * 0.2,
                  ),
                  Service(),
                  SizedBox(
                    height: isMobile
                        ? screenHeight * 0.05 // Taller for mobile
                        : isTablet
                            ? screenHeight * 0.1
                            : screenHeight * 0.2,
                  ),
                  FaqContainer(),
                  SizedBox(
                    height: isMobile
                        ? screenHeight * 0.05 // Taller for mobile
                        : isTablet
                            ? screenHeight * 0.1
                            : screenHeight * 0.2,
                  ),
                  ContactUs()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
