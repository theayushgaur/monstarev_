import 'package:flutter/material.dart';
import 'package:glowy_borders/glowy_borders.dart';
import 'package:provider/provider.dart';

import '../../provider/widgets_provider.dart';
import '../../widgets/code_dialog_box.dart';

class NotificationWidget extends StatelessWidget {
  final String containerName;

  final String codeSnippet;
  const NotificationWidget({
    super.key,
    required this.containerName,
    required this.codeSnippet,
  });

  @override
  Widget build(BuildContext context) {
    final widgetProvider = Provider.of<WidgetsProvider>(context);
    return MouseRegion(
      onEnter: (_) {
        widgetProvider.setNotificationHovered(true);
      },
      onExit: (_) {
        widgetProvider.setNotificationHovered(false);
      },
      child: Stack(
        children: [
          Container(
            height: 530,
            width: 500,
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
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  notificationContainer(badgeColor: Colors.purple),
                  notificationContainer(badgeColor: Colors.red),
                  notificationContainer(badgeColor: Colors.blue),
                  notificationContainer(badgeColor: Colors.green),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Visibility(
            visible: widgetProvider.notificationHovered,
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
}

class notificationContainer extends StatelessWidget {
  const notificationContainer({
    super.key,
    required this.badgeColor,
  });

  final Color badgeColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 400,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Theme.of(context).colorScheme.onPrimary,
            Theme.of(context).colorScheme.background,
            Theme.of(context).colorScheme.onPrimary,
          ],
        ),
        border: Border.all(
          color: Colors.grey.shade800,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: badgeColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            // SvgPicture.asset(
            //   'assets/images/TwitterX.svg',
            //   height: 40,
            // ),
          ],
        ),
      ),
    );
  }
}
