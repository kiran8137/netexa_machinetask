
import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key, 
    required this.icon, 
    required this.title,
  });

  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: const Color.fromARGB(255, 55, 123, 232),), 
      title:  Text(title,
      style: TextStyle(fontWeight: FontWeight.w600),

      ),
    );
  }
}