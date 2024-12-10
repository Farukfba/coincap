import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme_provider.dart';

class ToggleSwitch extends StatelessWidget {
  const ToggleSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        onTap: () {
          themeProvider.toggleTheme(
              themeProvider.themeMode != ThemeMode.dark);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: 62,
          height: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: themeProvider.themeMode == ThemeMode.dark
                ? Colors.grey[800]
                : Colors.white70,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Light Icon
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Icon(
                    Icons.light_mode,
                    color: themeProvider.themeMode == ThemeMode.dark
                        ? Colors.grey.shade300
                        : Colors.white,
                    size: 18,
                  ),
                ),
              ),
              // Dark Icon
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Icon(
                    Icons.dark_mode,
                    color: themeProvider.themeMode == ThemeMode.dark
                        ? Colors.white
                        : Colors.grey,
                    size: 18,
                  ),
                ),
              ),
              // Toggle Thumb
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5,),
                child: Align(
                  alignment: themeProvider.themeMode == ThemeMode.dark
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
