import 'package:flutter/material.dart';
import 'package:news_api_flutter/redux/list_state.dart';
import 'package:news_api_flutter/ui/news_list_page.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:news_api_flutter/redux/list_reducer.dart';

void main() => runApp(NewsListApp());

class NewsListApp extends StatelessWidget {
  final store =
      Store<ListState>(listReducer, initialState: ListState.initialState());

  @override
  Widget build(BuildContext context) {
    return StoreProvider<ListState>(
        store: store,
        child: MaterialApp(
          title: 'Redux',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: NewsListPage(),
        ));
  }
}
