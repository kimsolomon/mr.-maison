import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({super.key});

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

        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: isMobile
                          ? screenHeight * 0.03
                          : isTablet
                              ? screenHeight * 0.03
                              : screenHeight * 0.05,
                      backgroundColor:
                          Colors.transparent, // Optional: background color
                      backgroundImage:
                          AssetImage('assets/images/expert-48.png'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      textAlign: TextAlign.center,
                      ' Expert Design Consultations:',
                      style: TextStyle(
                          fontSize: screenWidth * 0.02,
                          // color: const Color(0xFFA89484),
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: isMobile
                          ? screenWidth * 0.25
                          : isTablet
                              ? screenWidth * 0.21
                              : screenWidth * 0.25,
                      height: isMobile
                          ? screenHeight * 0.08
                          : isTablet
                              ? screenHeight * 0.1
                              : screenHeight * 0.2,
                      child: Text(
                        textAlign: TextAlign.center,
                        ' We work closely with you to understand your unique style and preferences, crafting bespoke Turkish curtain designs that exceed your expectations.',
                        style: TextStyle(
                            fontSize: screenWidth * 0.02,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: isMobile
                      ? screenWidth * 0.04 // 5% of screen height for mobile
                      : isTablet
                          ? screenWidth * 0.04 // 7% of screen height for tablet
                          : screenWidth * 0.04,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: isMobile
                          ? screenHeight * 0.03
                          : isTablet
                              ? screenHeight * 0.03
                              : screenHeight * 0.05,
                      backgroundColor:
                          Colors.transparent, // Optional: background color
                      backgroundImage:
                          AssetImage('assets/images/measurement-100.png'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      textAlign: TextAlign.center,
                      'Precision Measuring and Fitting: ',
                      style: TextStyle(
                          fontSize: screenWidth * 0.02,
                          // color: const Color(0xFFA89484),
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: isMobile
                          ? screenWidth * 0.25
                          : isTablet
                              ? screenWidth * 0.23
                              : screenWidth * 0.25,
                      height: isMobile
                          ? screenHeight * 0.08
                          : isTablet
                              ? screenHeight * 0.1
                              : screenHeight * 0.2,
                      child: Text(
                        textAlign: TextAlign.center,
                        ' Our skilled technicians ensure accurate measurements and precise installation, guaranteeing a seamless fit that enhances the beauty of your Turkish curtains.',
                        style: TextStyle(
                            fontSize: screenWidth * 0.02,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: isMobile
                      ? screenWidth * 0.04 // 5% of screen height for mobile
                      : isTablet
                          ? screenWidth * 0.04 // 7% of screen height for tablet
                          : screenWidth * 0.04,
                ),
                // Column(
                //   children: [
                //     CircleAvatarBorder(
                //         icon: Icon(
                //       Icons.announcement_outlined,
                //       color: Colors.grey,
                //       size: screenWidth * 0.02,
                //     )),
                //     SizedBox(height: 10),
                //     Text(
                //       textAlign: TextAlign.center,
                //       ' Expert Design Consultations:',
                //       style: TextStyle(
                //           fontSize: screenWidth * 0.017,
                //           color: Color(0xFFB8860B),
                //           fontWeight: FontWeight.bold),
                //     ),
                //     SizedBox(height: 10),
                //     Container(
                //       width: isMobile
                //           ? screenWidth * 0.25
                //           : isTablet
                //               ? screenWidth * 0.23
                //               : screenWidth * 0.25,
                //       height: isMobile
                //           ? screenHeight * 0.06
                //           : isTablet
                //               ? screenHeight * 0.1
                //               : screenHeight * 0.2,
                //       child: Text(
                //         textAlign: TextAlign.center,
                //         ' We work closely with \n you to understand your unique style and preferences, \n crafting bespoke Turkish curtain designs  \n that exceed your expectations.',
                //         style: TextStyle(
                //             fontSize: screenWidth * 0.015,
                //             color: Colors.grey[600],
                //             fontWeight: FontWeight.bold),
                //       ),
                //     )
                //   ],
                // ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: isMobile
                          ? screenHeight * 0.03
                          : isTablet
                              ? screenHeight * 0.03
                              : screenHeight * 0.05,
                      backgroundColor:
                          Colors.transparent, // Optional: background color
                      backgroundImage:
                          AssetImage('assets/images/fabric-64.png'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      textAlign: TextAlign.center,
                      '  Customized Fabric Selection',
                      style: TextStyle(
                          fontSize: screenWidth * 0.02,
                          // color: const Color(0xFFA89484),
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: isMobile
                          ? screenWidth * 0.25
                          : isTablet
                              ? screenWidth * 0.23
                              : screenWidth * 0.25,
                      height: isMobile
                          ? screenHeight * 0.08
                          : isTablet
                              ? screenHeight * 0.1
                              : screenHeight * 0.2,
                      child: Text(
                        textAlign: TextAlign.center,
                        ' We offer an extensive \n range  of luxurious fabrics, \n carefully selected to complement your Turkish curtains \n and elevate your interior design',
                        style: TextStyle(
                            fontSize: screenWidth * 0.02,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: screenWidth <= 600
                  ? 40 // Mobile
                  : screenWidth <= 1024
                      ? 50 // Tablet
                      : 60, // Desktop
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: isMobile
                      ? screenWidth * 0.04 // 5% of screen height for mobile
                      : isTablet
                          ? screenWidth * 0.04 // 7% of screen height for tablet
                          : screenWidth * 0.04,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: isMobile
                          ? screenHeight * 0.03
                          : isTablet
                              ? screenHeight * 0.03
                              : screenHeight * 0.05,
                      backgroundColor:
                          Colors.transparent, // Optional: background color
                      backgroundImage:
                          AssetImage('assets/images/technician-64.png'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      textAlign: TextAlign.center,
                      ' Meticulous Handcrafting:  ',
                      style: TextStyle(
                          fontSize: screenWidth * 0.017,
                          // color: const Color(0xFFA89484),
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: isMobile
                          ? screenWidth * 0.25
                          : isTablet
                              ? screenWidth * 0.23
                              : screenWidth * 0.25,
                      height: isMobile
                          ? screenHeight * 0.08
                          : isTablet
                              ? screenHeight * 0.1
                              : screenHeight * 0.2,
                      child: Text(
                        textAlign: TextAlign.center,
                        ' Our master craftsmen pour \n their heart and soul into every stitch,\n ensuring that each Turkish curtain is a masterpiece \n of elegance and sophistication.',
                        style: TextStyle(
                            fontSize: screenWidth * 0.02,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: isMobile
                      ? screenWidth * 0.04 // 5% of screen height for mobile
                      : isTablet
                          ? screenWidth * 0.04 // 7% of screen height for tablet
                          : screenWidth * 0.04,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: isMobile
                          ? screenHeight * 0.03
                          : isTablet
                              ? screenHeight * 0.03
                              : screenHeight * 0.05,
                      backgroundColor:
                          Colors.transparent, // Optional: background color
                      backgroundImage:
                          AssetImage('assets/images/project-50.png'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      textAlign: TextAlign.center,
                      ' Dedicated Project Management:  ',
                      style: TextStyle(
                          fontSize: screenWidth * 0.02,
                          // color: const Color(0xFFA89484),
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: isMobile
                          ? screenWidth * 0.25
                          : isTablet
                              ? screenWidth * 0.23
                              : screenWidth * 0.25,
                      height: isMobile
                          ? screenHeight * 0.08
                          : isTablet
                              ? screenHeight * 0.1
                              : screenHeight * 0.2,
                      child: Text(
                        textAlign: TextAlign.center,
                        ' From concept to completion, \n our experienced project managers oversee \n every aspect of your Turkish curtain project, \n ensuring a stress-free experience and exceptional results.',
                        style: TextStyle(
                            fontSize: screenWidth * 0.02,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
