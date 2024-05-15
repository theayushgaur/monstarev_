import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            // border: Border.all(color: Pallate.borderGreyColor),
            ),
        child: TabBar(
          indicatorWeight: 1.0,
          indicatorColor: Colors.red,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          tabs: [
            Tab(
                child: Text(
              'Option 1',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            )),
            Tab(
                child: Text(
              'Option 2',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
