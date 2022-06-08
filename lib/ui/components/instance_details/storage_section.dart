import 'package:flutter/material.dart';

class StorageSection extends StatefulWidget {
  const StorageSection({Key? key}) : super(key: key);

  @override
  State<StorageSection> createState() => _StorageSectionState();
}

class _StorageSectionState extends State<StorageSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: Text('Root device name'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Root device type'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('EBS Optimization'),
            subtitle: Text('---'),
          ),
        ],
      ),
    );
  }
}
