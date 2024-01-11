import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double angle = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.withOpacity(0.5),
      body: Stack(
        // clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -170,
            child: AnimatedRotation(
              curve: Curves.fastEaseInToSlowEaseOut,
              duration: const Duration(seconds: 2),
              turns: angle,
              child: CircleAvatar(
                backgroundColor: Colors.brown.withOpacity(0.31),
                radius: 210,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      bottom: -81,
                      left: (MediaQuery.of(context).size.width / 2) - 81,
                      child: const CircleAvatar(
                        radius: 81,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => angle += 1),
        child: const Icon(Icons.rotate_right_outlined),
      ),
    );
  }
}
