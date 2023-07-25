import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.text,
    this.icon,
    this.onPressed,
  });
  final String? text;
  final Icon? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(text ?? 'Notes'),
      actions: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.grey.shade800),
            child: IconButton(
                onPressed: onPressed,
                icon: icon ??
                    const Icon(
                      Icons.search,
                      color: Colors.white,
                    ))),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
