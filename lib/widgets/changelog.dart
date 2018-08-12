import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myagenda/widgets/ui/CircularLoader.dart';

class ChangeLog extends StatelessWidget {
  Future<String> _fetchData() async {
    final response = await http.get(
        'https://raw.githubusercontent.com/Pyozer/dots_indicator/master/CHANGELOG.md');
    if (response.statusCode == 200)
      return response.body;
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
          future: _fetchData(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) =>
              (snapshot.hasData)
                  ? MarkdownBody(data: snapshot.data)
                  : Center(child: CircularLoader())),
    );
  }
}