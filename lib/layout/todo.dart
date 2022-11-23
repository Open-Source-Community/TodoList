import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/screens/archivedTask.dart';
import 'package:todo/screens/doneTask.dart';
import 'package:todo/screens/newTask.dart';
import 'package:todo/shared/components/Component.dart';

class ToDo extends StatefulWidget {
  ToDo({Key? key}) : super(key: key);

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  List<Widget> screens = [new_task(), archived_task(), done_task()];

  var ScaffoldKey = GlobalKey<ScaffoldState>();

  var formKey = GlobalKey<FormState>();

  var titlecontroller = TextEditingController();

  var timecontroller = TextEditingController();

  var calendercontroller = TextEditingController();

  int index = 0;
  bool Sheet_open=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: ScaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("TODO LIST",style: TextStyle(color: Colors.blue),)),
        elevation: 0,
      ),
      body: screens[index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(Sheet_open);
          if(Sheet_open){
            if(formKey.currentState!.validate())
              {
                print('done');
                setState(() {
                  Sheet_open=false;
                  titlecontroller.text="";
                  timecontroller.text="";
                  calendercontroller.text="";
                  Navigator.pop(context);
                });


              }

          }
          else {
            ScaffoldKey.currentState!.showBottomSheet((context) =>
                Container(
                  color: Colors.white54,
                  child: Form(
                    key: formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          DefaultTextFeild(
                              controller: titlecontroller,
                              type: TextInputType.text,
                              prefix: Icons.task,
                              label: "Task To Do",
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please Enter your task";
                                } else {
                                  return null;
                                }
                              }),
                          SizedBox(
                            height: 15,
                          ),
                          DefaultTextFeild(
                              controller: timecontroller,
                              type: TextInputType.none,

                              prefix: Icons.watch_later,
                              label: "Time for your task",
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please Enter the Time for your task";
                                } else {
                                  return null;
                                }
                              },
                              ontap: () {
                                showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),
                                ).then((value) {
                                  timecontroller.text = value!.format(context);
                                });
                              }),
                          SizedBox(
                            height: 15,
                          ),
                          DefaultTextFeild(
                              controller: calendercontroller,
                              type: TextInputType.none,

                              prefix: Icons.calendar_month,
                              label: "Date for your task",
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please Enter the Date for your task";
                                } else {
                                  return null;
                                }
                              },
                              ontap: () {
                                showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime.now().add(
                                        Duration(days: 30))).then((value) {
                                  calendercontroller.text =
                                      DateFormat.yMMMd().format(value!);
                                });
                              }),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                )).closed.then((value) {
                  setState(() {
                    Sheet_open=false;
                  });
            });
            setState(() {
              Sheet_open=true;
            });
          }
        },
        child: Sheet_open? Icon(Icons.add):Icon(Icons.edit),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (index_) {
          setState(() {
            index = index_;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "New Tasks"),
          BottomNavigationBarItem(
              icon: Icon(Icons.archive), label: "Archived Tasks"),
          BottomNavigationBarItem(
              icon: Icon(Icons.done), label: "Finshed Tasks"),
        ],
          type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
