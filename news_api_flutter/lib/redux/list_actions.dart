import 'package:news_api_flutter/data/news_item_model.dart';

class NewsListLoadAction {}

class GotListDataAction {
  final List<NewsItem> items;

  GotListDataAction(this.items);
}

class FilterItemsByTagAction {
  final String tagToFilterBy;

  FilterItemsByTagAction(this.tagToFilterBy);
}
