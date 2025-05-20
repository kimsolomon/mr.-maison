import 'package:flutter/material.dart';

class AllGrid extends StatelessWidget {
  const AllGrid({super.key});

  final List<String> imageUrls = const [
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1747417250/1747378812957_naixll.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1747417250/1747378813210_dmsbq1.jpg',
    "https://res.cloudinary.com/dopkpplt2/image/upload/v1747417250/1747378812656_jbb5xj.jpg",
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1747417250/1746517767459_t5jjl4.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1747417250/1744235513501_okwejy.jpg',
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
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956563/wallsblindsnigeria-09032025-0031_bntbp3.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956562/wallsblindsnigeria-09032025-0033_zelxsv.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956562/wallsblindsnigeria-09032025-0030_h4lnld.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956562/wallsblindsnigeria-09032025-0028_guxvqc.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956561/wallsblindsnigeria-09032025-0027_j7ccbu.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956561/wallsblindsnigeria-09032025-0026_veuoum.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956547/wallsblindsnigeria-09032025-0025_bie4s8.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956543/wallsblindsnigeria-09032025-0016_swxvaz.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956544/wallsblindsnigeria-09032025-0023_bfbmnb.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956544/wallsblindsnigeria-09032025-0024_bb98px.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956533/wallsblindsnigeria-09032025-0006_vnydka.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956532/wallsblindsnigeria-09032025-0002_zif2gf.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956530/usointeriorcreative-10042025-0099_ypbjfl.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956520/usointeriorcreative-10042025-0098_gcmkea.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956504/usointeriorcreative-10042025-0097_sktz13.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956503/usointeriorcreative-10042025-0093_nxtspk.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956503/usointeriorcreative-10042025-0096_ie8elb.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956503/usointeriorcreative-10042025-0092_eqxqlh.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956502/usointeriorcreative-10042025-0091_lasf62.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956502/usointeriorcreative-10042025-0090_qadqqc.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956501/usointeriorcreative-10042025-0088_mvhdr9.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956468/usointeriorcreative-10042025-0087_blm1nx.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956468/usointeriorcreative-10042025-0085_ghjfbn.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956468/usointeriorcreative-10042025-0086_r9zvec.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956467/usointeriorcreative-10042025-0084_xrnrxb.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956467/usointeriorcreative-10042025-0083_xvv3e8.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956467/usointeriorcreative-10042025-0081_bnzjnj.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956467/usointeriorcreative-10042025-0082_phhe93.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956467/usointeriorcreative-10042025-0080_stumcn.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956362/usointeriorcreative-10042025-0079_n4vymp.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956335/usointeriorcreative-10042025-0078_jsyowk.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956335/usointeriorcreative-10042025-0077_zluwnn.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956335/usointeriorcreative-10042025-0076_v7yxmo.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956335/usointeriorcreative-10042025-0075_dtzshm.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956333/usointeriorcreative-10042025-0065_r43hso.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956333/usointeriorcreative-10042025-0064_pfypxj.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956333/usointeriorcreative-10042025-0062_lju55h.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956332/usointeriorcreative-10042025-0060_sg3brt.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956332/usointeriorcreative-10042025-0059_rvxcpb.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956332/usointeriorcreative-10042025-0057_ratvrh.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956332/usointeriorcreative-10042025-0058_xrstsk.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956332/usointeriorcreative-10042025-0056_efdoha.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956332/usointeriorcreative-10042025-0055_ai0zue.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956332/usointeriorcreative-10042025-0053_qkgkci.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956331/usointeriorcreative-10042025-0052_q5mrv0.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956331/usointeriorcreative-10042025-0051_g6hgnk.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956331/usointeriorcreative-10042025-0050_ft9xty.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956331/usointeriorcreative-10042025-0047_pqusjf.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956331/usointeriorcreative-10042025-0048_goau6w.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956331/usointeriorcreative-10042025-0049_ai60fh.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956331/usointeriorcreative-10042025-0046_eagbwy.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956330/usointeriorcreative-10042025-0045_tmynzf.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956330/usointeriorcreative-10042025-0043_jnyk3g.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956330/usointeriorcreative-10042025-0044_aozro1.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956330/usointeriorcreative-10042025-0040_ghdqtd.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956330/usointeriorcreative-10042025-0042_a7vxjn.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956330/usointeriorcreative-10042025-0041_ahvis7.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956330/usointeriorcreative-10042025-0039_hwmjav.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956329/usointeriorcreative-10042025-0038_reahih.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956329/usointeriorcreative-10042025-0036_vbkzd9.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956329/usointeriorcreative-10042025-0037_xuhmom.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956329/usointeriorcreative-10042025-0035_nkhoz2.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956329/usointeriorcreative-10042025-0034_rrjrmz.webp',
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
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956531/usointeriorcreative-10042025-0100_zycquj.jpg,'
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
        'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956329/usointeriorcreative-10042025-0032_dww784.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956328/usointeriorcreative-10042025-0031_gkbfu4.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956328/usointeriorcreative-10042025-0030_h3spny.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956328/usointeriorcreative-10042025-0028_sslhck.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956328/usointeriorcreative-10042025-0029_e7bhq1.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956328/usointeriorcreative-10042025-0027_opn1hq.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956328/usointeriorcreative-10042025-0027_opn1hq.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956328/usointeriorcreative-10042025-0026_rinss4.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956327/usointeriorcreative-10042025-0025_jwavxa.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956327/usointeriorcreative-10042025-0023_wq95u4.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956327/usointeriorcreative-10042025-0024_uradbk.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956327/usointeriorcreative-10042025-0020_yf4yt3.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956327/usointeriorcreative-10042025-0021_njug0w.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956327/usointeriorcreative-10042025-0022_ayyij1.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956326/usointeriorcreative-10042025-0017_lzyvqm.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956326/usointeriorcreative-10042025-0016_ghnhmi.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956326/usointeriorcreative-10042025-0015_kwxvvf.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956326/usointeriorcreative-10042025-0013_vxkutb.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956324/usointeriorcreative-10042025-0011_ejcxzi.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956324/usointeriorcreative-10042025-0012_xbxkpj.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956324/usointeriorcreative-10042025-0010_wjf7j5.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956324/usointeriorcreative-10042025-0009_uapbm1.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956322/usointeriorcreative-10042025-0008_k9wvpy.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956322/usointeriorcreative-10042025-0007_jx7xjb.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956321/usointeriorcreative-10042025-0006_ymzelx.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956320/usointeriorcreative-10042025-0005_r6rtaf.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956319/usointeriorcreative-10042025-0004_yn1kwp.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956318/usointeriorcreative-10042025-0003_exioeb.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956318/usointeriorcreative-10042025-0003_exioeb.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956318/usointeriorcreative-10042025-0002_zhwrxb.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956317/usointeriorcreative-10042025-0001_tcc8ex.webp',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956316/IMG_20250130_185626_q0ictw.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956314/IMG_20250215_153155_k3mu8i.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956281/1739340164661_qotafh.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956281/1739340105333_cbbtbd.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956280/1739186234013_qo5ul6.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956281/1739186234209_npss5d.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956273/1733841009874_epc7ua.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956269/1733841009779_v3oq2k.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956269/1733841009574_ctxdja.jpg',
    'https://res.cloudinary.com/dopkpplt2/image/upload/v1745956269/1733841009261_anhxn1.jpg'
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
