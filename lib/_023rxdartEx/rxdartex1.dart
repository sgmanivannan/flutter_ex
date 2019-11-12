import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class RxDartEx1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Rx Dart Ex 1"),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              _listItem(
                  title: 'Publish Subjects',
                  subTitle:
                      'They behave like StreamControllers besides that multiple listeners are allowed',
                  onClick: () => publishSubject1()),
              _listItem(
                  title: 'Publish Subjects Future.delayed ex',
                  onClick: () => publishSubject2()),
              _listItem(
                  title: 'Behaviour Subject',
                  subTitle:
                      'Every new subcriber receives the last received data item',
                  onClick: () => behaviourSubject()),
              _listItem(
                  title: 'Replay Subject',
                  subTitle:
                      'As items are added to the subject, the ReplaySubject will store them and when the stream is listened to, those recorded items will be emitted to the listener.',
                  onClick: () => replaySubject()),
            ],
          ),
        ),
      ),
    );
  }

  _listItem({String title, String subTitle, Function onClick}) {
    return ListTile(
      title: Text(title),
      subtitle: subTitle == null ? Container() : Text(subTitle),
      onTap: onClick,
    );
  }

  void publishSubject1() {
    print('-' * 40);
    print('Publish Subject ex1');
    var subject = new PublishSubject<String>();

    subject.listen((item) => print(item));

    subject.add("Item1");

// Add a second listener
    subject.listen((item) => print(item.toUpperCase()));

    subject.add("Item2");
    subject.add("Item3");

// this is only to prevent the testing framework to kill this process before all items on the Stream are processed
    //await Future.delayed(Duration(seconds: 5));

// This will cancel all Subscriptions
    subject.close;
  }

  void publishSubject2() async {
    print('-' * 40);
    print('Publish Subject ex2');
    var subject = new PublishSubject<String>();

    subject.listen((item) => print(item));

    subject.add("Item1");

// Add a second listener
    subject.listen((item) => print(item.toUpperCase()));

    subject.add("Item2");
    subject.add("Item3");

// this is only to prevent the testing framework to kill this process before all items on the Stream are processed
    await Future.delayed(Duration(seconds: 5));

// This will cancel all Subscriptions
    subject.close;
  }

  void behaviourSubject() {
    print('-' * 40);
    print('Behavior Subject ex2');
    var subject = new BehaviorSubject<String>();

    subject.listen((item) => print(item));

    subject.add("Item1");
    subject.add("Item2");

    subject.listen((item) => print(item.toUpperCase()));

    subject.add("Item3");

    subject.close();
  }

  void replaySubject() {
    print('-' * 40);
    print('Replay Subject');
    ReplaySubject<int> subject = ReplaySubject<int>();

    subject.add(1);
    subject.add(2);
    subject.add(3);

    subject.stream.listen((item) => print(item));

    subject.close();
  }

  void usingMap1() {
    print('-' * 40);
    print("Using Map ex1");
    var subject = new PublishSubject<String>();

    subject.map((item) => item.toUpperCase()).listen(print);

    subject.add("Item1");
    subject.add("Item2");
    subject.add("Item3");

    subject.close();
  }

  usingMap2() {
    print('-' * 40);
    print("Using Map ex2");
    var subject = new PublishSubject<int>();

    subject
        .map((intValue) => intValue.toString())
        .map((item) => item.toUpperCase())
        .listen(print);

    subject.add(1);
    subject.add(2);
    subject.add(3);
  }
}
