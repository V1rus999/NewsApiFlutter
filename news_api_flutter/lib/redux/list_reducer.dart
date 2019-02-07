import 'package:news_api_flutter/redux/list_state.dart';
import 'package:news_api_flutter/redux/list_actions.dart';
import 'package:news_api_flutter/data/news_item_model.dart';

ListState listReducer(ListState state, action) {
  return ListState(items: listItemReducer(state.items, action));
}

List<NewsItem> listItemReducer(List<NewsItem> items, action) {
  if (action is GotListDataAction) {
    return action.items;
  }

  if (action is FilterItemsByTagAction) {
    return []
      ..addAll(items)
      ..retainWhere((it) => it.tags.contains(action.tagToFilterBy));
  }
  return items;
}
