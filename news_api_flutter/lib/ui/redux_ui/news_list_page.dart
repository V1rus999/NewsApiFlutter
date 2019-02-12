import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:news_api_flutter/redux/list_state.dart';
import 'package:news_api_flutter/redux/list_viewmodel.dart';
import 'package:news_api_flutter/ui/redux_ui/dynamic_text_widget.dart';
import 'package:news_api_flutter/ui/redux_ui/filter_items_widget.dart';
import 'package:news_api_flutter/ui/redux_ui/item_list_widget.dart';
import 'package:news_api_flutter/ui/redux_ui/load_items_widget.dart';

class ReduxNewsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Redux Example'),
      ),
      body: StoreConnector<ListState, NewsListViewModel>(
        converter: (store) => NewsListViewModel.create(store),
        builder: (context, viewModel) => Column(
          children: <Widget>[
            FilterItemsWidget(viewModel),
            Expanded(
              child: ItemListWidget(viewModel),
            ),
            LoadItemsWidget(viewModel),
            DynamicTextWidget(viewModel)
          ],
        ),
      ),
    );
  }
}

