import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomAddNoteButton extends StatelessWidget {
  const CustomAddNoteButton({super.key, this.onTap, this.isLoading = false});
  final VoidCallback? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(16),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: isLoading ? Colors.transparent : kPrimaryColor),
        child: Center(
            child: isLoading
                ? SizedBox(
                    height: 28,
                    width: 28,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: kPrimaryColor,
                    ),
                  )
                : const Text(
                    'Add',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )),
      ),
    );
  }
}
