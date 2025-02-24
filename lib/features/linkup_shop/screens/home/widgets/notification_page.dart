import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final List<NotificationItem> notifications = [
    NotificationItem(title: 'Order Shipped', body: 'Your order has been shipped.', isRead: false),
    NotificationItem(title: 'Order Delivered', body: 'Your order has been delivered.', isRead: false),
    NotificationItem(title: 'Sale', body: 'New sale on your favorite items!', isRead: true),
    NotificationItem(title: 'Update', body: 'App update available.', isRead: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Card(
            color: notification.isRead ? Colors.grey[200] : Colors.white,
            child: ListTile(
              leading: Icon(Iconsax.notification, color: notification.isRead ? Colors.grey : Colors.black),
              title: Text(notification.title, style: TextStyle(fontWeight: notification.isRead ? FontWeight.normal : FontWeight.bold)),
              subtitle: Text(notification.body),
              trailing: notification.isRead ? null : Icon(Icons.circle, color: Colors.blue, size: 12),
              onTap: () {
                setState(() {
                  notification.isRead = true;
                });
                // Handle tap on notification
              },
            ),
          );
        },
      ),
    );
  }
}

class NotificationItem {
  final String title;
  final String body;
  bool isRead;

  NotificationItem({
    required this.title,
    required this.body,
    this.isRead = false,
  });
}
