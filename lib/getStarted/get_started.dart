import 'package:flutter/material.dart';
import 'package:monstarev/provider/theme_changer.dart';
import 'package:monstarev/widgets/top_bar.dart';
import 'package:provider/provider.dart';

class NavigationRailExample extends StatefulWidget {
  const NavigationRailExample({Key? key}) : super(key: key);

  @override
  _NavigationRailExampleState createState() => _NavigationRailExampleState();
}

class _NavigationRailExampleState extends State<NavigationRailExample> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Center(
      child: Text('Home Page'),
    ),
    const Center(
      child: Text('Profile Page'),
    ),
    const Center(
      child: Text('Settings Page'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TopBar(themeChanger: themeChanger),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 100,
                ),
                NavigationRail(
                  leading: Text('Components'),
                  trailing: Text('Components'),

                  backgroundColor: Colors.black,
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: (int index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  labelType: NavigationRailLabelType.all,
                  // useIndicator: true,
                  // indicatorColor: Colors.red,
                  destinations: const <NavigationRailDestination>[
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      selectedIcon: Icon(Icons.home),
                      label: Text(
                        'Components',
                      ),
                      padding: EdgeInsets.all(20),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.person),
                      selectedIcon: Icon(Icons.person),
                      label: Text('Profile'),
                      padding: EdgeInsets.all(20),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.settings),
                      selectedIcon: Icon(Icons.settings),
                      label: Text('Settings'),
                      padding: EdgeInsets.all(20),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 100,
                ),
                const VerticalDivider(thickness: 0.5),
                Expanded(
                  child: _pages[_selectedIndex],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
