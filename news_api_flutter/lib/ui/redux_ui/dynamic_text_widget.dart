import 'package:flutter/material.dart';
import 'package:news_api_flutter/redux/list_viewmodel.dart';

class DynamicTextWidget extends StatefulWidget {
  final NewsListViewModel model;

  DynamicTextWidget(this.model);

  @override
  State<StatefulWidget> createState() {
    return DynamicTextState();
  }
}

class DynamicTextState extends State<DynamicTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.model.loadsClicked.toString());
  }
}
