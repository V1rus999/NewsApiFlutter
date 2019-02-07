import 'package:flutter/material.dart';
import 'package:news_api_flutter/data/news_item_model.dart';

class ListState {
  final List<NewsItem> items;

  ListState({@required this.items});

  ListState copyWith({List<NewsItem> items}) {
    return ListState(items: items ?? this.items);
  }

  ListState.initialState() : items = List.unmodifiable([]);
}
