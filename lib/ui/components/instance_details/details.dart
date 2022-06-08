import 'package:ec2_manager/ui/components/collapsible_container.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class InstanceDetails extends StatefulWidget {
  const InstanceDetails({Key? key}) : super(key: key);

  @override
  State<InstanceDetails> createState() => _InstanceDetailsState();
}

class _InstanceDetailsState extends State<InstanceDetails> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExpandablePanel(
            header: Text('Instance details'),
            collapsed: Container(),
            expanded: GeneralDetails(),
          ),
          ExpandablePanel(
            header: Text('Host and placement group'),
            collapsed: Container(),
            expanded: HostDetails(),
          ),
          ExpandablePanel(
            header: Text('Capacity reservation'),
            collapsed: Container(),
            expanded: CapacityReservation(),
          ),
          ExpandablePanel(
            header: Text('Accelerators'),
            collapsed: Container(),
            expanded: AcceleratorDetails(),
          )
        ],
      ),
    );
  }
}

class GeneralDetails extends StatelessWidget {
  GeneralDetails({Key? key}) : super(key: key);

  List<Map<String, dynamic>> details = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Platform'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('AMI ID'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Monitoring'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Platform details'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('AMI name'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Termination protection'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Stop protection'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Launch time'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('AMI Location'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Instance auto-recovery'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Lifecycle'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Stop hybernate behavior'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('AMI Launch index'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Keypair name'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('State transiition reason'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('State transiition reason'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Credit specification'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Kernel ID'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('State transiition message'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Usage operation'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('RAM disk id'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Owner'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Classic link'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Enclaves support'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Boot mode'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Allow tags instance metadata'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Use RBN as guest OS name'),
          subtitle: Text('---'),
        ),
        Divider(),
        ListTile(
          title: Text('Answer RBN DNS Hostname IPv4'),
          subtitle: Text('---'),
        ),
      ],
    );
  }
}

class HostDetails extends StatelessWidget {
  const HostDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        title: Text('Host ID'),
        subtitle: Text('---'),
      ),
      Divider(),
      ListTile(
        title: Text('Affinity'),
        subtitle: Text('---'),
      ),
      Divider(),
      ListTile(
        title: Text('Placement group'),
        subtitle: Text('---'),
      ),
      Divider(),
      ListTile(
        title: Text('Host resource group name'),
        subtitle: Text('---'),
      ),
      Divider(),
      ListTile(
        title: Text('Tenancy'),
        subtitle: Text('---'),
      ),
      Divider(),
      ListTile(
        title: Text('Virtualization type'),
        subtitle: Text('---'),
      ),
      Divider(),
      ListTile(
        title: Text('Reservation'),
        subtitle: Text('---'),
      ),
      Divider(),
      ListTile(
        title: Text('Partition number'),
        subtitle: Text('---'),
      ),
      Divider(),
      ListTile(
        title: Text('Number of vCPUs'),
        subtitle: Text('---'),
      ),
    ]);
  }
}

class CapacityReservation extends StatelessWidget {
  const CapacityReservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        title: Text('Capacity reservation ID'),
        subtitle: Text('---'),
      ),
      Divider(),
      ListTile(
        title: Text('Capacity reservation setting'),
        subtitle: Text('---'),
      )
    ]);
  }
}

class AcceleratorDetails extends StatelessWidget {
  const AcceleratorDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        title: Text('Elastic Graphics ID'),
        subtitle: Text('---'),
      ),
      Divider(),
      ListTile(
        title: Text('Elastic inference accelerator ID'),
        subtitle: Text('---'),
      )
    ]);
  }
}
