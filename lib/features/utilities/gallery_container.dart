import 'package:flutter/material.dart';
import 'package:martin_project/features/third_page.dart';

class GalleryContainer extends StatelessWidget {
  const GalleryContainer({super.key});

  // void _launchURL() async {
  //   final Uri url = Uri.parse(
  //       'https://mrmaisoninteriorsandfurniture.pixieset.com/curtainscatalog/');
  //   if (await canLaunchUrl(url)) {
  //     await launchUrl(url, mode: LaunchMode.externalApplication);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

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

        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Browse Our Room Creations',
                style: TextStyle(
                  fontSize: mediaquery.width * 0.03,
                  // color: const Color(0xFFA89484),
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
                child: Text(
                  textAlign: TextAlign.center,
                  'Explore our collection of beautifully crafted cotton, designed to meet our client needs. Each creation showcase the quality, care and expertise we bring to every project, \nbrowse through to see how our work brings out the comfort and elegance in each room ',
                  style: TextStyle(
                    fontSize: mediaquery.width * 0.019,
                    color: Colors.grey[400],
                  ),
                ),
              ),
              SizedBox(
                height: isMobile
                    ? screenHeight * 0.034
                    : isTablet
                        ? screenHeight * 0.05
                        : screenHeight * 0.07,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: isMobile
                        ? screenWidth * 0.018
                        : isTablet
                            ? screenWidth * 0.023
                            : screenWidth * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildImage(
                      mediaquery,
                      'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956330/usointeriorcreative-10042025-0042_a7vxjn.webp',
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: isMobile
                              ? screenWidth * 0.018
                              : isTablet
                                  ? screenWidth * 0.023
                                  : screenWidth * 0.01),
                      child: _buildImage(
                        mediaquery,
                        'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956326/usointeriorcreative-10042025-0017_lzyvqm.webp',
                      ),
                    ),
                    _buildImage(
                      mediaquery,
                      'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956320/usointeriorcreative-10042025-0005_r6rtaf.webp',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: isMobile
                        ? screenWidth * 0.018
                        : isTablet
                            ? screenWidth * 0.023
                            : screenWidth * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildImage(
                      mediaquery,
                      'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956321/usointeriorcreative-10042025-0006_ymzelx.webp',
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: isMobile
                              ? screenWidth * 0.018
                              : isTablet
                                  ? screenWidth * 0.023
                                  : screenWidth * 0.01),
                      child: _buildImage(
                        mediaquery,
                        'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956318/usointeriorcreative-10042025-0002_zhwrxb.webp',
                      ),
                    ),
                    _buildImage(
                      mediaquery,
                      'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956328/usointeriorcreative-10042025-0027_opn1hq.webp',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: isMobile
                      ? screenHeight * 0.03
                      : isTablet
                          ? screenHeight * 0.03
                          : screenHeight * 0.04,
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ThirdPage()));
                    },
                    child: Container(
                      height: isMobile
                          ? screenHeight * 0.03
                          : isTablet
                              ? screenHeight * 0.035
                              : screenHeight * 0.05,
                      width: isMobile
                          ? screenWidth * 0.25
                          : isTablet
                              ? screenWidth * 0.23
                              : screenWidth * 0.2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Browse Our Gallery',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: isMobile
                                  ? screenWidth *
                                      0.02 // 5% of screen height for mobile
                                  : isTablet
                                      ? screenWidth *
                                          0.023 // 7% of screen height for tablet
                                      : screenWidth * 0.015,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward_outlined,
                            color: Colors.black,
                            size: mediaquery.width * 0.02,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildImage(Size mediaquery, String imageUrl) {
    double screenWidth = mediaquery.width;
    double screenHeight = mediaquery.height;
    double borderRadius = mediaquery.width * 0.008;

    bool isMobile = screenWidth <= 600;
    bool isTablet = screenWidth > 600 && screenWidth <= 1024;
    bool isDesktop = screenWidth > 1024;
    return Container(
      width: isMobile
          ? screenWidth * 0.27
          : isTablet
              ? screenWidth * 0.23
              : screenWidth * 0.2,
      height: isMobile
          ? screenHeight * 0.1
          : isTablet
              ? screenHeight * 0.2
              : screenHeight * 0.3,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
