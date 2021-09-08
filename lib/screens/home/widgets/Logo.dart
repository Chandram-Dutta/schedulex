import 'package:flutter/material.dart';

import 'package:schedulex/responsive/responsive.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          child: Placeholder(),
          height: 200,
          width: 200,
        ),
        SizedBox(
          width: 10,
        ),
        isDesktop(context)
            ? Text("Lorem ipsum", style: Theme.of(context).textTheme.headline1)
            : SizedBox()
      ],
    );
  }
}
