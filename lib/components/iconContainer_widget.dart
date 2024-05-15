import 'package:flutter/material.dart';

class IconContainerWidget extends StatelessWidget {
  const IconContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 770,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade800, width: 0.8),
        color:
            // isHovered ? Colors.grey.shade900 :
            Theme.of(context).colorScheme.onTertiary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Icons',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.code,
                      color: Theme.of(context).colorScheme.tertiary,
                    )),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.message_outlined,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.browser_not_supported,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.search,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.home,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.menu,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.close,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.settings,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.done,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.check_circle,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.add,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.delete,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.arrow_back_ios,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.star,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.logout,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.cancel,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.check,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.toggle_on,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.grade,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.share,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.refresh,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.download,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.apps,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.bolt,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.filter_list,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.autorenew,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.key,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.block,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.sort,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.undo,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Icon(
                        Icons.done_all,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
