import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:note_app/models/note_model.dart';

import '../../constant.dart';

// ignore: must_be_immutable
class NoteComponent extends StatelessWidget {
  const NoteComponent({
    super.key,
    this.onTap,
    this.noteModel,
  });

  final VoidCallback? onTap;
  final NoteModel? noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        width: double.infinity,
        height: 215,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kPrimaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ListTile(),
                      Expanded(
                          child: Text(
                        noteModel!.title,
                        overflow: TextOverflow.ellipsis,
                        style:
                            const TextStyle(fontSize: 28, color: Colors.black),
                      )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            noteModel!.subTitle,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey.shade800),
                          )),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                          child: IconButton(
                              onPressed: () {
                                noteModel?.delete();
                              },
                              icon: const Icon(
                                Icons.delete,
                                size: 32,
                                color: Colors.black,
                              ))),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Text(noteModel!.date,
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey.shade700)),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
