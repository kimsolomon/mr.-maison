import 'package:flutter/material.dart';

class FaqContainer extends StatefulWidget {
  const FaqContainer({super.key});

  @override
  _FaqContainerState createState() => _FaqContainerState();
}

class _FaqContainerState extends State<FaqContainer> {
  final List<Map<String, String>> faqData = [
    {
      "question": "What's the perfect curtain length for my room?",
      "answer":
          "We recommend curtains that just kiss the floor for a classic look, or go for a more dramatic floor-sweeping effect. Our experts can help you measure up!"
    },
    {
      "question": "How do I choose the right fabric for my curtains?",
      "answer":
          "Consider the mood you want to create: light and airy, or rich and luxurious? Think about the room's purpose, too - blackout fabric for bedrooms, or sheer curtains for living areas?"
    },
    {
      "question":
          "What's the typical lead time for custom curtains and blinds?",
      "answer":
          "Our standard lead time is 3 to 7 days max, but we can accommodate rush orders or expedited shipping for an additional fee. Ask us for details!"
    },
    {
      "question": "Can I motorize my curtains?",
      "answer":
          "Absolutely! Motorized curtains are perfect for hard-to-reach windows or for adding a touch of smart home tech. Ask us about our motorization options!"
    },
    {
      "question": "How do I clean and maintain my curtains and blinds?",
      "answer":
          "For curtains, a gentle vacuum or spot cleaning with a damp cloth should do the trick. For blinds, use a soft brush or damp cloth to wipe down slats. Avoid harsh chemicals or abrasive cleaners!"
    },
    {
      "question":
          "Can I customize my curtains and blinds to match my unique style?",
      "answer":
          "Of course! Our experts can help you choose from a wide range of fabrics, colors, and styles to create one-of-a-kind curtains and blinds that reflect your personality."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var mediaquery = MediaQuery.of(context).size;
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;

        bool isMobile = screenWidth <= 600;
        bool isTablet = screenWidth > 600 && screenWidth <= 1024;
        bool isDesktop = screenWidth > 1024;

        // Responsive styling based on screen size
        double questionFontSize = isMobile
            ? screenWidth * 0.03
            : isTablet
                ? screenWidth * 0.03
                : screenWidth * 0.015;
        double answerFontSize = isMobile
            ? screenWidth * 0.03
            : isTablet
                ? screenWidth * 0.025
                : screenWidth * 0.02;
        double paddingHorizontal = isMobile
            ? 20.0
            : isTablet
                ? 30.0
                : 40.0;
        double containerWidth = isMobile
            ? screenWidth * 0.9
            : isTablet
                ? screenWidth * 0.9
                : screenWidth * 0.8;

        return Column(
          children: [
            // Main FAQ Heading
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
                'HAVE QUESTIONS?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: questionFontSize,
                  color: Colors.white,
                ),
              ),
            ),

            // FAQ Items (Each question in its own container)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
              child: Column(
                children: faqData.map((faqItem) {
                  return Padding(
                    padding: const EdgeInsets.only(),
                    child: Container(
                      width: containerWidth,
                      decoration: BoxDecoration(color: Colors.black),
                      child: ExpansionTile(
                        title: Text(
                          faqItem["question"]!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: questionFontSize,
                            color: Colors.white,
                          ),
                        ),
                        iconColor: const Color(0xFF6A4F06),
                        childrenPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        children: [
                          Text(
                            faqItem["answer"]!,
                            style: TextStyle(
                              fontSize: answerFontSize,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        );
      },
    );
  }
}
