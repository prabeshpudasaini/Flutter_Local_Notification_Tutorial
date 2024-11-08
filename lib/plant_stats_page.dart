import 'package:flutter/material.dart';
import 'package:flutter_awesome_notifications_tutorial/widgets.dart';

class PlantStatsPage extends StatelessWidget {
  const PlantStatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const AppBarTitle(),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Plant Stats',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 45,
              ),
              const PlantImage(),
              const SizedBox(
                height: 25,
              ),
              const PlantStats(),
            ],
          ),
        ),
      ),
    );
  }
}
