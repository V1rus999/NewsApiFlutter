import 'package:flutter/material.dart';
import 'package:news_api_flutter/redux/list_viewmodel.dart';

class FilterItemsWidget extends StatefulWidget {
  final NewsListViewModel model;

  FilterItemsWidget(this.model);

  @override
  State<StatefulWidget> createState() => FilterItemsState();
}

class FilterItemsState extends State<FilterItemsWidget> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(hintText: 'Filter'),
      onSubmitted: (s) {
        widget.model.onFilterByTag(s);
        controller.text = '';
      },
    );
  }
}
