import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../utils/utils.dart';
import '../segments/segments.dart';

class ModalBase extends HookWidget {
  const ModalBase({
    required this.segments,
    Key? key,
  }) : super(key: key);

  final List<Segment> segments;

  @override
  Widget build(BuildContext context) {
    final _groupValue = useState(0);

    return Center(
      child: SizedBox(
        width: min(context.width() * 0.9, 600),
        height: min(context.height() * 0.5, 600),
        child: Card(
          shape: const RoundedRectangleBorder(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: segments[_groupValue.value],
              ),
              BottomNavigationBar(
                elevation: 20.0,
                currentIndex: _groupValue.value,
                items: segments
                    .map(
                      (e) => BottomNavigationBarItem(
                        icon: Icon(e.icon()),
                        label: e.title(),
                      ),
                    )
                    .toList(),
                onTap: (value) => _groupValue.value = value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
