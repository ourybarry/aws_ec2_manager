import 'package:ec2_manager/resources/model/ec2_instance.dart';
import 'package:ec2_manager/ui/pages/single_instance.dart';
import 'package:flutter/material.dart';

class Ec2InstanceListItem extends StatelessWidget {
  // final Ec2Instance item;

  const Ec2InstanceListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SingleInstance()));
      },
      child: Container(
        color: Colors.white,
        child: ListTile(
          leading: Icon(Icons.computer),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('Name'), Text('Running')],
          ),
        ),
      ),
    );
  }
}
