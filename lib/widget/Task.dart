
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class task extends StatelessWidget {
  const task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 6.0,
        right: 9.0,
        bottom: 8.0,
      ),
      child: Container(
        height: 120,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blue,
                  child: Text(
                    '12:00 PM',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(flex: 1,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Task 1',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text('description',
                      style: TextStyle(
                        fontSize: 19,
                      ),),
                  ],
                ),
                Spacer(flex: 15,),
                Text('Nov 25,2022',
                style: TextStyle(
                  fontSize: 16,
                ),),
                Spacer(flex: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){},
                        child: Icon(Icons.done),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Icon(Icons.archive),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(flex: 2,),
            Divider(
              height: 1,
              thickness: 0.5,
              indent: 20,
              endIndent: 30,
              color: Colors.blue,
            ),
            Spacer(flex: 3,),
          ],
        ),
      ),
    );
  }
}
