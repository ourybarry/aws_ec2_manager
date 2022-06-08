import 'package:flutter/material.dart';

class StatusCheckSection extends StatefulWidget {
  const StatusCheckSection({Key? key}) : super(key: key);

  @override
  State<StatusCheckSection> createState() => _StatusCheckSectionState();
}

class _StatusCheckSectionState extends State<StatusCheckSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: Text('System Status check'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Instance status check'),
            subtitle: Text('---'),
          ),
        ],
      ),
    );
  }
}
