import 'package:flutter/material.dart';
import 'package:news_api_flutter/data/news_item_model.dart';

class ListState {
  final List<NewsItem> items;
  final int clicks;

  ListState({@required this.items, this.clicks});

  ListState copyWith({List<NewsItem> items, int clicks}) {
    return ListState(items: items ?? this.items, clicks: clicks ?? this.clicks);
  }

  ListState.initialState()
      : items = List.unmodifiable([]),
        clicks = 0;
}
