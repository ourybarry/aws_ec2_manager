import 'package:flutter/material.dart';

class TagSection extends StatefulWidget {
  const TagSection({Key? key}) : super(key: key);

  @override
  State<TagSection> createState() => _TagSectionState();
}

class _TagSectionState extends State<TagSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Tag name'),
                subtitle: Text('Tag value'),
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: 13));
  }
}
