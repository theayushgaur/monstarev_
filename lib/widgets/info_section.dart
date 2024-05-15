import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Text(
            'Discover + create unlimited\nvisuals for your designs',
            style: GoogleFonts.arimo(
              decoration: TextDecoration.none,
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
              fontSize: 60,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Wrap(
            spacing: 100,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/shape2 (1).webp',
                    height: 70,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Boosts Development Efficiency',
                    style: GoogleFonts.arimo(
                      decoration: TextDecoration.none,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 33,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Save time and effort by using pre-built components for common\nUI elements. Focus on business logic rather than reinventing the wheel.',
                    maxLines: 5,
                    style: GoogleFonts.arimo(
                      decoration: TextDecoration.none,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/shape2 (1).webp',
                    height: 70,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Ensures Visual Consistency',
                    style: GoogleFonts.arimo(
                      decoration: TextDecoration.none,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 33,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Maintain a unified design language across your application with predefined\nstyles and themes. Provide users with a seamless experience across different\nscreens.',
                    maxLines: 5,
                    style: GoogleFonts.arimo(
                      decoration: TextDecoration.none,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Wrap(
            spacing: 100,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/shape2 (1).webp',
                height: 70,
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fosters Collaboration',
                    style: GoogleFonts.arimo(
                      decoration: TextDecoration.none,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 33,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Promote collaboration among team members with reusable components.\nShare and reuse components across projects for smoother\ncommunication and code sharing.',
                    maxLines: 5,
                    style: GoogleFonts.arimo(
                      decoration: TextDecoration.none,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/shape2 (1).webp',
                    height: 70,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Accelerates Prototyping',
                    style: GoogleFonts.arimo(
                      decoration: TextDecoration.none,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 33,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Quickly prototype and iterate on app designs with customizable\ncomponents. Streamline the feedback loop and design experimentation process.',
                    maxLines: 5,
                    style: GoogleFonts.arimo(
                      decoration: TextDecoration.none,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
