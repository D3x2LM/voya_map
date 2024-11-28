import 'package:flutter/material.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/navigation_tabs.dart';
import '../widgets/restaurant_card.dart';
import '../widgets/bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SearchBarWidget(),
            const NavigationTabs(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                          'https://i.postimg.cc/KvN3mdP4/imagen-2024-11-28-152212998.png',
                          width: double.infinity,
                          height: 270,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const RestaurantCard(),
                  ],
                ),
              ),
            ),
            const BottomNavigation(),
          ],
        ),
      ),
    );
  }
}
