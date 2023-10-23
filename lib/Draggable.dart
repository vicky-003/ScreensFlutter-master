import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrelloBoard extends StatefulWidget {
  @override
  _TrelloBoardState createState() => _TrelloBoardState();
}

class _TrelloBoardState extends State<TrelloBoard> {
  List<String> queueTaskNames = [];
  List<String> inProgressTaskNames = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Trello',
            style: TextStyle(fontSize: 19),
          ),
          elevation: 2,
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Queue Column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 18),
                        child: Text('Queue'),
                      ),
                      Expanded(child: Container()),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Icon(Icons.more_horiz_outlined, color: Colors.grey),
                      ),
                      IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text('Add Task'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: TextField(
                                      decoration: const InputDecoration(labelText: 'Task Name'),
                                      onSubmitted: (text) {
                                        addTask(text, true); // Add task to Queue
                                        // Navigator.of(context).pop();
                                        Get.back();
                                      },
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                  Expanded(
                    child: DragTarget<String>(
                      onAccept: (taskName) {
                        moveTask(taskName, true); // Move task to Queue
                      },
                      builder: (BuildContext context, List<String?> candidateData, List<dynamic> rejectedData) {
                        return ListView.builder(
                          itemCount: queueTaskNames.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Draggable<String>(
                              data: queueTaskNames[index],
                              child: createCard(queueTaskNames[index], 'Zachery'),
                              feedback: createCard(queueTaskNames[index], 'Zachery'),
                              childWhenDragging: Container(),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            // In-Progress Column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 18, top: 10),
                    child: Text('In-Progress'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: DragTarget<String>(
                        onAccept: (taskName) {
                          moveTask(taskName, false); // Move task to In-Progress
                        },
                        builder: (BuildContext context, List<String?> candidateData, List<dynamic> rejectedData) {
                          return ListView.builder(
                            itemCount: inProgressTaskNames.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Draggable<String>(
                                data: inProgressTaskNames[index],
                                child: createCard(inProgressTaskNames[index], 'Zachery'),
                                feedback: createCard(inProgressTaskNames[index], 'Zachery'),
                                childWhenDragging: Container(),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget createCard(String title, String author) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(width: 0.5),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:const TextStyle(color: Colors.black87,fontSize: 14) ),
          Text('- by $author', style: const TextStyle(color: Colors.grey,fontSize: 14)),
        ],
      ),
    );
  }

  void addTask(String taskName, bool isQueue) {
    setState(() {
      if (isQueue) {
        queueTaskNames.add(taskName);
      } else {
        inProgressTaskNames.add(taskName);
      }
    });
  }

  void moveTask(String taskName, bool isQueue) {
    setState(() {
        if (isQueue) {
          inProgressTaskNames.remove(taskName);
          queueTaskNames.add(taskName);
      }else {
        queueTaskNames.remove(taskName);
        inProgressTaskNames.add(taskName);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    // Initialize your tasks here
    queueTaskNames.addAll(['Route Transitions', 'Referral System', 'Mobile Number input']);
    inProgressTaskNames.addAll(['Flutter Challenges', 'Payment Screen']);
  }
}


