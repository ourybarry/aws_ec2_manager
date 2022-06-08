import 'package:ec2_manager/ui/components/collapsible_container.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class SecuritySection extends StatefulWidget {
  const SecuritySection({Key? key}) : super(key: key);

  @override
  State<SecuritySection> createState() => _SecuritySectionState();
}

class _SecuritySectionState extends State<SecuritySection> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: Text('IAM Role'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Owner ID'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Launch time'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Security Groups'),
            subtitle: Text('---'),
          ),
        ],
      ),
    );
  }
}
