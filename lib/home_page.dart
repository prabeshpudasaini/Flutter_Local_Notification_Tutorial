import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_awesome_notifications_tutorial/notifications.dart';
import 'package:flutter_awesome_notifications_tutorial/plant_stats_page.dart';
import 'package:flutter_awesome_notifications_tutorial/utilities.dart';
import 'package:flutter_awesome_notifications_tutorial/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed && mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Allow Notification'),
            content: const Text('The app would like to send a notification'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Don\'t Allow',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  AwesomeNotifications()
                      .requestPermissionToSendNotifications()
                      .then((_) {
                    if (!context.mounted) return;
                    Navigator.of(context).pop();
                  });
                },
                child: const Text(
                  'Allow',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      }
    });

    // setting listeners for awesome notification
    AwesomeNotifications().setListeners(
      onNotificationCreatedMethod: (notification) async =>
          Notifications.onNotificationCreatedMethod(notification, context),
      onActionReceivedMethod: Notifications.onActionReceivedMethod,
      onDismissActionReceivedMethod: (ReceivedAction receivedAction) =>
          Notifications.onDismissActionReceivedMethod(receivedAction),
      onNotificationDisplayedMethod:
          (ReceivedNotification receivedNotification) =>
              Notifications.onNotificationDisplayedMethod(receivedNotification),
    );

    super.initState();
  }

  @override
  void dispose() {
    AwesomeNotifications().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const AppBarTitle(),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const PlantStatsPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.insert_chart_outlined_rounded,
              size: 30,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PlantImage(),
            const SizedBox(
              height: 25,
            ),
            HomePageButtons(
              onPressedOne: Notifications().createPlantFoodNotification,
              onPressedTwo: () async {
                NotificationWeekAndTime? pickedSchedule =
                    await pickSchedule(context);
                if (pickedSchedule != null) {
                  Notifications()
                      .createWaterRemainderNotification(pickedSchedule);
                }
              },
              onPressedThree: () async {
                Notifications().cancelScheduledNotifications();
              },
            ),
          ],
        ),
      ),
    );
  }
}
