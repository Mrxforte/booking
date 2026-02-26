import 'package:flutter/material.dart';

class UserInfoTileWidget extends StatelessWidget {
  const UserInfoTileWidget({
    super.key,
    required this.text,
    this.icon,
    this.ontapHandler,
  });

  final String text;
  final IconData? icon;
  final VoidCallback? ontapHandler;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontapHandler,
      title: Text(text),
      trailing: icon == null ? SizedBox.shrink() : Icon(icon),
    );
  }
}
