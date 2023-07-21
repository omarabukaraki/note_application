import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Notes'),
        actions: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey.shade800),
              child:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)))
        ],
      ),
      body: ListView(
        children: [
          NoteComponent(
            color: Colors.orange.shade300,
          ),
          NoteComponent(
            color: Colors.amber.shade200,
          ),
          NoteComponent(),
          NoteComponent(
            color: Colors.pink.shade200,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey.shade800,
        child: const Icon(Icons.add),
      ),
    );
  }
}

// ignore: must_be_immutable
class NoteComponent extends StatelessWidget {
  NoteComponent({super.key, this.color});
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color ?? Colors.blue.shade200,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                        child: Text(
                      'Flutter tips',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    )),
                    Expanded(
                        flex: 2,
                        child: Text(
                          'build your career with Omar abu karaki',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 22, color: Colors.grey.shade800),
                        )),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Expanded(
                      child: Icon(
                    Icons.delete,
                    size: 32,
                    color: Colors.black,
                  )),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  Text('May 21,2022',
                      style:
                          TextStyle(fontSize: 15, color: Colors.grey.shade700)),
                ],
              ),
            ]),
      ),
    );
  }
}
