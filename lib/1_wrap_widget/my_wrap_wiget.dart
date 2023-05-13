import 'package:flutter/material.dart';

class MyWrapWiget extends StatelessWidget {
  const MyWrapWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: const Text('AH')),
            label: const Text('Hamilton'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: const Text('ML')),
            label: const Text('Lafayette'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: const Text('HM')),
            label: const Text('Mulligan'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: const Text('JL')),
            label: const Text('Laurens'),
          ),
        ],
      ),
    );
  }
}
