import 'package:ec2_manager/resources/model/ec2_instance.dart';
import 'package:ec2_manager/ui/components/ec2_instance_list_item.dart';
import 'package:flutter/material.dart';

class Instances extends StatelessWidget {
  // final List<Ec2Instance> instances = [
  //   Ec2Instance('-id', 'sample-instance', InstanceState(16, 'Running')),
  //   Ec2Instance('-id2', 'sample-instance2', InstanceState(0, 'Stopped'))
  // ];

  Instances({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => Ec2InstanceListItem(),
        itemCount: 20,
      ),
    );
  }
}
