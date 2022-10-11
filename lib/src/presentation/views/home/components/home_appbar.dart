import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(flex: 2),
        Column(
          children: [
            const Text('Siguiendo'),
            Container(
              margin: const EdgeInsets.only(top: 4),
              height: 2.5,
              width: 30,
              color: Colors.transparent,
            ),
          ],
        ),
        const SizedBox(width: 8),
        Column(
          children: [
            const Text('Para ti'),
            Container(
              margin: const EdgeInsets.only(top: 4),
              height: 2.5,
              width: 30,
              color: Colors.white,
            ),
          ],
        ),
        const Spacer(flex: 1),
        const Expanded(flex: 1, child: Icon(CupertinoIcons.search)),
      ],
    );
  }
}
