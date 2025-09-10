import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spark_flutter_app/features/home/ui/home_screen.dart';
import 'package:spark_flutter_app/features/main/logic/main_navigation_cubit.dart';
import 'package:spark_flutter_app/features/main/ui/widgets/custom_bottom_nav.dart';
import 'package:spark_flutter_app/features/medicines/ui/medicines_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final List<Widget> _screens = const [
    HomeScreen(),
    HomeScreen(), //testing
    MedicinesScreen(),
    HomeScreen(), //testing
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainNavigationCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: _screens[currentIndex],
          bottomNavigationBar: CustomBottomNav(
            currentIndex: currentIndex,
            onTap: (index) {
              context.read<MainNavigationCubit>().changeTab(index);
            },
          ),
        );
      },
    );
  }
}
