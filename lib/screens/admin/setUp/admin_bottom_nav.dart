import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../preAppLoad/app_index_provider.dart';

class AdminBottomNav extends ConsumerWidget {
  final void Function(int i) onChange;
  const AdminBottomNav({
    @required this.onChange,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return BottomAppBar(
      color: Colors.cyan.shade100,
      shape: CircularNotchedRectangle(),
      notchMargin: 5,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          //favorites icon
          IconButton(
            icon: Icon(
              Icons.report,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              ref.read(appIndexProvider.notifier).changeIndex(1);
              onChange(1);
            },
          ),
          //user profile icon
          IconButton(
            icon: Icon(
              Icons.account_circle_rounded,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              ref.read(appIndexProvider.notifier).changeIndex(2);
              onChange(2);
            },
          ),
        ],
      ),
    );
  }
}
