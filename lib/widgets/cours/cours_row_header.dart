import 'package:flutter/material.dart';
import 'package:myagenda/models/cours.dart';

class CoursRowHeader extends StatelessWidget {
  final CoursHeader coursHeader;

  const CoursRowHeader({Key key, this.coursHeader}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle =
        Theme.of(context).textTheme.title.copyWith(color: Colors.grey[900]);

    return Container(
        color: Colors.grey[300],
        padding: const EdgeInsets.all(16.0),
        child: Text(coursHeader.dateForDisplay(),
            style: textStyle, overflow: TextOverflow.ellipsis, maxLines: 1));
  }
}
