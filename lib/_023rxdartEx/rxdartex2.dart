
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';


class RxDartEx2 extends StatefulWidget {
  @override
  _RxDartEx2State createState() => _RxDartEx2State();
}

class _RxDartEx2State extends State<RxDartEx2> {

  _body() {
    var jsonStrings = [
      '{"name": "Jon Doe", "adress": "New York", "phoneNumber":"424242","age": 42 }',
      '{"name": "Stephen King", "adress": "Castle Rock", "phoneNumber":"123456","age": 71 }',
      '{"name": "Jon F. Kennedy", "adress": "Washington", "phoneNumber":"111111","age": 66 }',
    ];

    // We simulate a Stream of json strings that we get from some API/Database with a Subject
    // In reality this migh look more like some `asyncWebCallFcuntion().asStream()`
    var dataStreamFromAPI = new PublishSubject<String>();

    dataStreamFromAPI
        .map<User>((jsonString) => User.fromJson(jsonString)) // from here on it's User objects
        .listen((user) => print(user.toString()));


    // Simulate incoming data
    dataStreamFromAPI.add(jsonStrings[0]);
    dataStreamFromAPI.add(jsonStrings[1]);
    dataStreamFromAPI.add(jsonStrings[2]);

    return Container();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('RxDart Ex2'),),

        body: _body(),

      ),
    );
  }

}


class User {
  final String name;
  final String adress;
  final String phoneNumber;
  final int age;

  // In real projects I would recommend some
  // serializer and not doing that manually
  factory User.fromJson(String jsonString) {
    var jsonMap = json.decode(jsonString);

    return User(
      jsonMap['name'],
      jsonMap['adress'],
      jsonMap['phoneNumber'],
      jsonMap['age'],
    );
  }

  User(this.name, this.adress, this.phoneNumber, this.age);

  @override
  String toString() {
    return '$name - $adress - $phoneNumber - $age';
  }
}

/*
class DataClass{}

class WrapperClass
{
  final DataClass wrapped;

  WrapperClass(this.wrapped);
}

var subject = new PublishSubject<WrapperClass>();

subject.map<WrapperClass>((a) => new WrapperClass(a));
 */
