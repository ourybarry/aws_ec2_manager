import 'package:flutter/material.dart';

class NetworkingSection extends StatefulWidget {
  const NetworkingSection({Key? key}) : super(key: key);

  @override
  State<NetworkingSection> createState() => _NetworkingSectionState();
}

class _NetworkingSectionState extends State<NetworkingSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: Text('Public IPv4 address'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Private IPv4 address'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('VPC ID'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Public IPv4 DNS'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Private IP DNS name'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Subnet ID'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('IPv6 addresses'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Secondary Private IPv4 address'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Availability zone'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Carrier IP addresses (ephemeral)'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Outpost ID'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Use RBN as guest OS hostname'),
            subtitle: Text('---'),
          ),
          Divider(),
          ListTile(
            title: Text('Answer RBN DNS hostname IPv4'),
            subtitle: Text('---'),
          ),
        ],
      ),
    );
  }
}
