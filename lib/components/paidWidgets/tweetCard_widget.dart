import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glowy_borders/glowy_borders.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../provider/widgets_provider.dart';
import '../../widgets/code_dialog_box.dart';

class TweetCardWidget extends StatelessWidget {
  final String containerName;

  final String codeSnippet;
  const TweetCardWidget(
      {Key? key, required this.containerName, required this.codeSnippet})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widgetProvider = Provider.of<WidgetsProvider>(context);
    return MouseRegion(
      onEnter: (event) {
        widgetProvider.setTweetCardHovered(true);
      },
      onExit: (event) {
        widgetProvider.setTweetCardHovered(false);
      },
      child: Stack(
        children: [
          _buildTweetCard(context),
          Visibility(
            visible: widgetProvider.tweetCardHovered,
            child: Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 90,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          containerName,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade700,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              modalSheet(context, codeSnippet);
                            },
                            child: Center(
                              child: Icon(
                                Icons.code,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTweetCard(context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        border: Border.all(
          color: Theme.of(context).colorScheme.onSecondary,
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.secondary,
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      height: 530,
      width: 500,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://i.postimg.cc/QtQsXJQk/profile-picture.webp',
                        errorWidget: (context, url, error) => Icon(Icons.error),
                        fit: BoxFit.cover,
                      ),
                      // child: Image.asset(
                      //   'assets/images/profile_picture.webp',
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Ayush',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                        ),
                        Text(
                          '@theayushgaur',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SvgPicture.asset(
                  'assets/images/TwitterX.svg',
                  height: 40,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Companies spend \$30,000+ and several weeks to build beautiful landing pages like @linear, @wopehq and @reflectnotes ✨I built @reactjs + @tailwindcss components for you to do the same in hours, starting at just \$29 Pre-order link + demo below 👇 #buildinpublic @buildspace',
              style: GoogleFonts.poppins(
                decoration: TextDecoration.none,
                color: Theme.of(context)
                    .colorScheme
                    .tertiary, // This color will be overridden by the gradient

                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 20,
            ),

            CachedNetworkImage(
              imageUrl: 'https://i.postimg.cc/PqQR6VTD/pic-1.webp',
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),

            // Image.asset(
            //   'assets/images/pic_1.webp',
            //   filterQuality: FilterQuality.low,
            // ),
          ],
        ),
      ),
    );
  }
}
