import 'package:flutter/material.dart';
import 'package:news_api_flutter/data/news_item_model.dart';
import 'package:news_api_flutter/redux/list_actions.dart';
import 'package:news_api_flutter/redux/list_state.dart';
import 'package:redux/redux.dart';

class NewsListViewModel {
  final List<NewsItem> items;
  final Function() onLoadComplete;
  final Function(String) onFilterByTag;
  final Function(List<NewsItem> items) onGotData;

  NewsListViewModel(
      this.items, this.onLoadComplete, this.onFilterByTag, this.onGotData);

  factory NewsListViewModel.create(Store<ListState> store) {
    _onLoadComplete() {
      store.dispatch(NewsListLoadAction());
    }

    _filterByTag(String filter) {
      store.dispatch(FilterItemsByTagAction(filter));
    }

    _gotData(List<NewsItem> items) {
      store.dispatch(GotListDataAction(items));
    }

    return NewsListViewModel(
        store.state.items, _onLoadComplete, _filterByTag, _gotData);
  }
}