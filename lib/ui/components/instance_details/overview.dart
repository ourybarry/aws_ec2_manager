import 'package:flutter/material.dart';

class InstanceOverview extends StatefulWidget {
  const InstanceOverview({Key? key}) : super(key: key);

  @override
  State<InstanceOverview> createState() => _InstanceOverviewState();
}

class _InstanceOverviewState extends State<InstanceOverview> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: Text('ID'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Type'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Status'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Public Ipv4 address'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Private Ipv4 address'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Ipv6 address'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Public Ipv4 DNS'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Private Ipv4 DNS'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Elastic Ip address'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Auto assigned IP address'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('VPC ID'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('AWS Compute Optimizer finding'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('IAM Role'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Subnet ID'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Auto scaling group name'),
            subtitle: Text('---'),
          ),
        ],
      ),
    );
  }
}
