import 'package:flutter/material.dart';
import 'package:monstarev/widgets/body_section.dart';

import 'container/dot_pattern.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: DotPattern(
        width: 16,
        height: 16,
        cx: 1,
        cy: 1,
        cr: 1,
        color: Theme.of(context).colorScheme.onPrimaryContainer,
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}
