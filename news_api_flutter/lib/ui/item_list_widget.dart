import 'package:flutter/material.dart';
import 'package:news_api_flutter/redux/list_viewmodel.dart';
import 'package:news_api_flutter/ui/news_list_page.dart';

class ItemListWidget extends StatelessWidget {
  final NewsListViewModel model;

  ItemListWidget(this.model);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: model.items
          .map((item) => ListTile(
                title: Text(item.author),
              ))
          .toList(),
    );
  }
}
