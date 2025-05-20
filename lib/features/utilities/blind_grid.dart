import 'package:flutter/material.dart';

class BlindGrid extends StatelessWidget {
  const BlindGrid({super.key});

  final List<String> imageUrls = const [
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1747417249/1738114225127_uj7kjk.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1747417249/1738114225322_lohpwa.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1747417249/1738114224928_nnf7mm.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1747417249/1738114225195_bydq66.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1747417249/1738114225265_pqb1q9.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1747417248/1738114225046_akq1ot.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1747417248/1747086796898_duxtxd.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1747417247/1747086796970_praezt.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1747417247/1747086797225_iq0beo.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1747417246/1747086797059_mzdshi.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1747417245/1747086797147_nfj9gf.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1747417245/1747086796780_i9iinj.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1747417245/1747086796664_orpprp.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745957578/IMG-20250206-WA0019_zkgmhp.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745957578/IMG-20250206-WA0023_1_h6ih6b.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745957575/IMG-20250206-WA0026_vjel61.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745957572/IMG-20250206-WA0017_1_qc5xny.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745957565/IMG-20250206-WA0032_pcbwxk.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745957564/IMG-20250206-WA0021_1_vk24i0.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745957564/IMG-20250206-WA0029_1_r2uhma.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745957562/IMG-20250206-WA0022_tzqwjm.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745957560/IMG-20250206-WA0016_vx7dzs.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745957560/IMG-20250206-WA0010_1_mfegux.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745957560/IMG-20250206-WA0014_vmgywi.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745957560/IMG-20250206-WA0008_gx4nvq.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745957559/IMG-20250206-WA0005_sgkdxn.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745957559/IMG-20250206-WA0011_lpsxmw.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745957559/IMG-20250206-WA0009_1_m28lh1.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745957558/IMG-20250206-WA0003_g42zcg.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956531/usointeriorcreative-10042025-0100_zycquj.jpg,',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956503/usointeriorcreative-10042025-0095_uaq2pg.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956503/usointeriorcreative-10042025-0094_idsbti.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956334/usointeriorcreative-10042025-0074_iedykc.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956334/usointeriorcreative-10042025-0072_qktmqx.jpg,',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956334/usointeriorcreative-10042025-0071_hoihri.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956334/usointeriorcreative-10042025-0070_xims3o.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956334/usointeriorcreative-10042025-0069_xxvjjh.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956333/usointeriorcreative-10042025-0068_wamfpm.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956333/usointeriorcreative-10042025-0067_tsu90v.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956329/usointeriorcreative-10042025-0033_a8dpaw.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956327/usointeriorcreative-10042025-0019_sumblj.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956327/usointeriorcreative-10042025-0014_z4acv2.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956326/IMG_20250207_163708_ayw0c4.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956326/usointeriorcreative-10042025-0018_hb3bwx.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956324/IMG_20250206_164934_gtllle.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956316/IMG_20250130_185626_q0ictw.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956291/IMG_20241212_164327_637_tlpkrp.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956291/1739379327934_jyzsbv.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956281/1739379319175_ozehvj.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956280/1738946829530_msn12h.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956274/1738946829348_xklyoe.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956274/1733841009941_vhdhlw.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956281/1739379310678_t7sqko.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      var mediaQuery = MediaQuery.of(context);
      double screenWidth = mediaQuery.size.width;
      double screenHeight = mediaQuery.size.height;

      bool isMobile = screenWidth <= 600;
      bool isTablet = screenWidth > 600 && screenWidth <= 1024;
      bool isDesktop = screenWidth > 1024;

      int imagesPerRow = isMobile
          ? 3
          : isTablet
              ? 4
              : 5;

      double spacing = isMobile
          ? screenWidth * 0.015 // e.g. 1.5% of screen width
          : isTablet
              ? screenWidth * 0.02
              : screenWidth * 0.008;
      double imageWidth =
          (screenWidth - (spacing * (imagesPerRow + 1))) / imagesPerRow;
      double imageHeight = isMobile
          ? screenHeight * 0.25
          : isTablet
              ? screenHeight * 0.3
              : screenHeight * 0.5;

      List<Widget> rows = [];
      for (int i = 0; i < imageUrls.length; i += imagesPerRow) {
        List<Widget> rowImages = [];

        for (int j = i; j < i + imagesPerRow && j < imageUrls.length; j++) {
          rowImages.add(
            Padding(
              padding: EdgeInsets.symmetric(horizontal: spacing / 2),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ImageViewerPage(imageUrl: imageUrls[j]),
                    ),
                  );
                },
                child: Container(
                  width: imageWidth,
                  height: imageHeight,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imageUrls[j]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          );
        }

        rows.add(Padding(
          padding: EdgeInsets.symmetric(vertical: spacing),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: rowImages,
          ),
        ));
      }

      return ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: rows,
      );
    });
  }
}

class ImageViewerPage extends StatelessWidget {
  final String imageUrl;

  const ImageViewerPage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Center(
          child: InteractiveViewer(
            child: Image.network(imageUrl),
          ),
        ),
      ),
    );
  }
}
