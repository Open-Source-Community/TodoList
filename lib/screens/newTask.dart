

import 'package:flutter/cupertino.dart';
<<<<<<< HEAD
=======
import 'package:flutter/material.dart';

import '../widget/Task.dart';
>>>>>>> 167ec245d36338b5ecddcf1f4298f34b7e07356b

class new_task  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Center(
    child: Text("New tasks"),

    );
=======
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            task(),
            task(),
            task(),
          ],
        );
>>>>>>> 167ec245d36338b5ecddcf1f4298f34b7e07356b
  }
}
