import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() => runApp(ListLoadMoreSwipeRefresh());

class ListLoadMoreSwipeRefresh extends StatefulWidget {
  @override
  _ListLoadMoreSwipeRefreshState createState() =>
      _ListLoadMoreSwipeRefreshState();
}

class _ListLoadMoreSwipeRefreshState extends State<ListLoadMoreSwipeRefresh> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  String nextPage = "https://swapi.co/api/people";

  ScrollController _scrollController = new ScrollController();

  bool isLoading = false;

  bool isSwipeRefresh = false;

  List names = new List();

  final dio = new Dio();

  void _getMoreData() async {
    if (!isLoading) {
      setState(() {
        isLoading = true;
      });

      if (nextPage != null) {
        final response = await dio.get(nextPage);
        List tempList = new List();
        nextPage = response.data['next'];
        for (int i = 0; i < response.data['results'].length; i++) {
          tempList.add(response.data['results'][i]);
        }

        setState(() {
          isLoading = false;
          names.addAll(tempList);
        });
      } else {
        print("nex page url is NULL");
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  void initState() {
    this._getMoreData();
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreData();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget _buildProgressIndicator() {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Opacity(
          opacity: isLoading ? 1.0 : 00,
          child: new CircularProgressIndicator(),
        ),
      ),
    );
  }

  Widget _buildList() {
    return ListView.builder(
//+1 for progressbar
      itemCount: names.length + 1,
      itemBuilder: (BuildContext context, int index) {
        if (index == names.length) {
          return _buildProgressIndicator();
        } else {
          return new ListTile(
            title: Text((names[index]['name'])),
            onTap: () {
              print(names[index]);
            },
          );
        }
      },
      controller: _scrollController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Pagination"),
        ),
        body: Container(
          child: RefreshIndicator(
              key: _refreshIndicatorKey,
              onRefresh: _refresh,
              child: isSwipeRefresh ? Container() : _buildList()),
        ),
        resizeToAvoidBottomPadding: false,
      ),
    );
  }

  Future<Null> _refresh() async {
    isSwipeRefresh = true;
    names = new List();
    await this._getMoreData();
    isSwipeRefresh = false;
  }
}
