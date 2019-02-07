import 'package:flutter/material.dart';
import 'package:news_api_flutter/data/news_item_model.dart';
import 'package:news_api_flutter/redux/list_viewmodel.dart';
import 'package:news_api_flutter/ui/news_list_page.dart';

class LoadItemsWidget extends StatelessWidget {
  final NewsListViewModel model;

  LoadItemsWidget(this.model);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Load Items'),
      onPressed: () => model.onGotData([
            NewsItem.createDefault('Jannie'),
            NewsItem.createDefault('Koos'),
            NewsItem.createDefault('Piet')
          ]),
    );
  }
}
