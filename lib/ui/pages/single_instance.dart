import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:ec2_manager/ui/components/instance_details/details.dart';
import 'package:ec2_manager/ui/components/instance_details/networking_section.dart';
import 'package:ec2_manager/ui/components/instance_details/overview.dart';
import 'package:ec2_manager/ui/components/instance_details/security_section.dart';
import 'package:ec2_manager/ui/components/instance_details/status_check_section.dart';
import 'package:ec2_manager/ui/components/instance_details/storage_section.dart';
import 'package:ec2_manager/ui/components/instance_details/tag_section.dart';
import 'package:flutter/material.dart';

class SingleInstance extends StatefulWidget {
  const SingleInstance({Key? key}) : super(key: key);

  @override
  State<SingleInstance> createState() => _SingleInstanceState();
}

class _SingleInstanceState extends State<SingleInstance>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  final List<String> _tabs = [
    'Overview',
    'Details',
    'Security',
    'Networking',
    'Storage',
    'Status check',
    // 'Monitoring',
    'Tags'
  ];

  final List<Widget> _tabsContent = [
    InstanceOverview(),
    InstanceDetails(),
    SecuritySection(),
    NetworkingSection(),
    StorageSection(),
    StatusCheckSection(),
    // InstanceDetails(),
    TagSection(),
  ];

  @override
  void initState() {
    _tabController = TabController(length: _tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [Text('Header')],
            ),
          ),
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            title: Container(
              child: TabBar(
                controller: _tabController,
                unselectedLabelStyle: TextStyle(color: Colors.black),
                unselectedLabelColor: Colors.black,
                isScrollable: true,
                tabs: _tabs
                    .map((e) => Tab(
                          child: Text(e),
                        ))
                    .toList(),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: const BubbleTabIndicator(
                  indicatorHeight: 25.0,
                  indicatorColor: Colors.blueAccent,
                  tabBarIndicatorSize: TabBarIndicatorSize.tab,
                  // Other flags
                  // indicatorRadius: 1,
                  // insets: EdgeInsets.all(1),
                  // padding: EdgeInsets.all(10)
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child:
                TabBarView(controller: _tabController, children: _tabsContent),
          )
        ],
      ),
    );
  }
}
