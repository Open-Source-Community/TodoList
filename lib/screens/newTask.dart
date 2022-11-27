

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/Task.dart';

class new_task  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            task(),
            task(),
            task(),
          ],
        );
  }
}
