import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductionContainer extends StatelessWidget {
  const IntroductionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 530,
      width: 500,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red, width: 0.8),
        color:
            // isHovered ? Colors.grey.shade900 :
            Theme.of(context).colorScheme.onTertiary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: DefaultTextStyle(
                  style: GoogleFonts.spaceGrotesk(
                    color: Colors.red,
                    fontSize: 18,
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText('Discipline is the best tool'),
                      TypewriterAnimatedText('Design first, then code'),
                      TypewriterAnimatedText('Do not patch bugs,rewrite them'),
                      TypewriterAnimatedText('Do not test bugs, design them'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                '''There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.''',
                style: GoogleFonts.spaceGrotesk(
                  decoration: TextDecoration.none,
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'Good Luck. Stay Coding',
                style: GoogleFonts.spaceGrotesk(
                  decoration: TextDecoration.none,
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
