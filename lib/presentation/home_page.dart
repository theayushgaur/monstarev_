import 'package:flutter/material.dart';
import 'package:monstarev/presentation/container/dot_pattern.dart';
import 'package:monstarev/widgets/body_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        children: [
          Positioned.fill(
            child: DotPattern(
              width: 16,
              height: 16,
              cx: 1,
              cy: 1,
              cr: 1,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
          const Body(),
        ],
      ),
    );
  }
}
