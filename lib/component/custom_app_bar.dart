import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Text('Notes'),
      actions: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.grey.shade800),
            child:
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))),
      ],
    );
  }

  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
