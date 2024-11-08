import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        FaIcon(
          FontAwesomeIcons.seedling,
          color: Colors.teal[50],
        ),
        const Text('GreenThumbs'),
      ],
    );
  }
}

class PlantImage extends StatelessWidget {
  const PlantImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/plant.png'),
      height: 400,
    );
  }
}

class HomePageButtons extends StatelessWidget {
  final Future<void> Function() onPressedOne;
  final Future<void> Function() onPressedTwo;
  final Future<void> Function() onPressedThree;
  const HomePageButtons({
    super.key,
    required this.onPressedOne,
    required this.onPressedTwo,
    required this.onPressedThree,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 20)),
                backgroundColor: WidgetStateProperty.all(
                  Colors.teal,
                ),
              ),
              onPressed: onPressedOne,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.dollarSign,
                    size: 14,
                    color: Colors.teal[50],
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Text(
                    'Plant Food',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 20)),
                backgroundColor: WidgetStateProperty.all(
                  Colors.teal,
                ),
              ),
              onPressed: onPressedTwo,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.droplet,
                    size: 14,
                    color: Colors.teal[50],
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Text(
                    'Water',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 20)),
                backgroundColor: WidgetStateProperty.all(
                  Colors.teal,
                ),
              ),
              onPressed: onPressedThree,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidCircleXmark,
                    size: 14,
                    color: Colors.teal[50],
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Text(
                    'Cancel',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlantStats extends StatelessWidget {
  const PlantStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.bolt,
                size: 20,
                color: Colors.yellow[600],
              ),
              const SizedBox(width: 3),
              const Text(
                '25%',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.droplet,
                size: 20,
                color: Colors.teal[50],
              ),
              const SizedBox(width: 3),
              const Text(
                '80%',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.cloudSun,
                size: 20,
                color: Colors.yellow[600],
              ),
              const SizedBox(width: 3),
              const Text(
                '60%',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
