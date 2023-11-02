import 'package:citadel/utils/colors.dart';
import 'package:citadel/widgets/notification_screen_header.dart';
import 'package:citadel/widgets/notifications_card.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.bgBlack,
      appBar: const NotificationScreenHeader(),
      body: ListView(
        children: [
          notificationCard(Appcolors.unopenedNotifColor),
          notificationCard(Appcolors.openedNotifColor),
          notificationCard(Appcolors.unopenedNotifColor),
          notificationCard(Appcolors.unopenedNotifColor),
          notificationCard(Appcolors.openedNotifColor),
          notificationCard(Appcolors.openedNotifColor),
          notificationCard(Appcolors.unopenedNotifColor),
          notificationCard(Appcolors.unopenedNotifColor),
          notificationCard(Appcolors.openedNotifColor),
          notificationCard(Appcolors.openedNotifColor),
          notificationCard(Appcolors.unopenedNotifColor),
        ],
      ),
    );
  }
}
