import 'package:flutter/material.dart';
import 'package:flutter_ex/_001hiworld/hiworld.dart';
import 'package:flutter_ex/_002navigation/navigationex.dart';
import 'package:flutter_ex/_003namedroutes/namedroutes.dart';
import 'package:flutter_ex/_004generateroutes/generateroutes.dart';
import 'package:flutter_ex/_005undefinedviewroutes/undefinedviewroutes.dart';
import 'package:flutter_ex/_006passarguments1/passarguments1.dart';
import 'package:flutter_ex/_006passarguments_2/passarguments2.dart';
import 'package:flutter_ex/_006passdata/passdata.dart';
import 'package:flutter_ex/_007returndata1/returndata1.dart';
import 'package:flutter_ex/_007returndata2/returndata2.dart';
import 'package:flutter_ex/_008forms/Form1.dart';
import 'package:flutter_ex/_008forms/Form2.dart';
import 'package:flutter_ex/_008forms/Form3.dart';
import 'package:flutter_ex/_008forms/Form4.dart';
import 'package:flutter_ex/_008forms/Form5.dart';
import 'package:flutter_ex/_008forms/Form6.dart';
import 'package:flutter_ex/_009usinghteme/usingtheme.dart';
import 'package:flutter_ex/_010statelesswidgets/statelesswidgets.dart';
import 'package:flutter_ex/_011statefulwidgets/statefulwidgets.dart';
import 'package:flutter_ex/_012loadlocalimage/loadlocalimage.dart';
import 'package:flutter_ex/_013loadlocaljson/loadlocaljson.dart';
import 'package:flutter_ex/_014httpex/httpex1.dart';
import 'package:flutter_ex/_014httpex/httpex2.dart';
import 'package:flutter_ex/_014httpex/httpex3post.dart';
import 'package:flutter_ex/_015layouts/layouts1.dart';
import 'package:flutter_ex/_015layouts/layouts2.dart';
import 'package:flutter_ex/_015layouts/layouts3.dart';
import 'package:flutter_ex/_016dialogs/dialogs1.dart';
import 'package:flutter_ex/_016dialogs/dialogs2.dart';
import 'package:flutter_ex/_017lists/lists1/Lists1.dart';
import 'package:flutter_ex/_018steppers/stepper1.dart';
import 'package:flutter_ex/_018steppers/stepper2.dart';
import 'package:flutter_ex/_018steppers/stepper4.dart';
import 'package:flutter_ex/_019tabs/tabs1.dart';
import 'package:flutter_ex/_019tabs/tabs2.dart';
import 'package:flutter_ex/_019tabs/tabs3.dart';
import 'package:flutter_ex/_020bottomnavigationbars/bottomnavigationbar1.dart';
import 'package:flutter_ex/_020bottomnavigationbars/bottomnavigationbar2.dart';
import 'package:flutter_ex/_021navigationdrawer/navigationdrawer1/navigationdrawer1.dart';
import 'package:flutter_ex/_021navigationdrawer/navigationdrawer2/navigationdrawer2.dart';
import 'package:flutter_ex/_021navigationdrawer/navigationdrawer3/navigationdrawer3.dart';
import 'package:flutter_ex/_021navigationdrawer/navigationdrawer4/navigationdrawer4.dart';
import 'package:flutter_ex/_022pageviewexample/pageviewex1.dart';
import 'package:flutter_ex/_023rxdartEx/rxdartex1.dart';
import 'package:flutter_ex/_023rxdartEx/rxdartex2.dart';
import 'package:flutter_ex/utils/utils.dart';

import '_017lists/lists2/listloadmore.dart';
import '_017lists/lists2/listloadmoreswiperefresh.dart';
import '_018steppers/stepper3.dart';
import '_018steppers/stepper5.dart';

main() {
  runApp(MaterialApp(
    title: "Flutter ex",
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    List<Widget> listRow = List();

    _addListItem(listRow, context, '001. Hi World', HiWorld());

    _addListItem(listRow, context, '002. Navigation (Basic)', NavigationEx());

    _addListItem(
        listRow, context, '003. Navigation (Named Routes)', NamedRoutesEx());

    _addListItem(listRow, context, '004. Navigation (Generate Routes)',
        GenerateRoutesEx());

    _addListItem(listRow, context, '005. Navigation (Undefinded View Routes)',
        UndefinedViewRoutesEx());

    _addListItem(listRow, context, '006.1. Navigation (Pass Arguments)',
        PassArgumentsEx1());

    _addListItem(listRow, context, '006.2. Navigation (Pass Arguments)',
        PassArgumentsEx2());

    _addListItem(
        listRow, context, '006.3. Navigation (Pass Data)', PassDataEx());

    _addListItem(
        listRow, context, '007.1. Navigation (Return Data)', ReturnDataEx1());

    _addListItem(
        listRow, context, '007.2. Navigation (Return Data)', ReturnDataEx2());

    _addListItem(listRow, context,
        '008.1. Forms (Build a form with validation)', Form1());

    _addListItem(listRow, context,
        '008.2. Forms (Create and style a text field)', Form2());

    _addListItem(
        listRow, context, '008.3. Forms (Focus and text fields)', Form3());

    _addListItem(listRow, context,
        '008.4. Forms (Handle changes to a text field)', Form4());

    _addListItem(listRow, context,
        '008.5. Forms (Retrieve the value of a text field)', Form5());

    _addListItem(listRow, context, '008.6. Forms (TextField Example)', Form6());

    _addListItem(listRow, context, '009. Using Theme', UsingTheme());

    _addListItem(
        listRow, context, '010. Stateless Widgets', StatelessWidgets());

    _addListItem(listRow, context, '011. Stateful Widgets', StatefulWidgets());

    _addListItem(listRow, context, '012. Load Local Images', LoadLocalImage());

    _addListItem(listRow, context, '013. Load Local Json', LoadLocalJson());

    _addListItem(listRow, context, '014.1. Http (get)', HttpEx1());

    _addListItem(listRow, context, '014.2. Http (Get)', HttpEx2());

    _addListItem(listRow, context, '014.3. Http (post)', HttpEx3post());

    _addListItem(listRow, context, '015.1. Layouts 1', Layouts1());

    _addListItem(listRow, context, '015.2. Layouts 2', Layouts2());

    _addListItem(listRow, context, '015.3. Layouts 3', Layouts3());

    _addListItem(listRow, context, '016.1. Dialogs', Dialogs1());

    _addListItem(listRow, context, '016.2. Dialogs', Dialogs2());

    _addListItem(listRow, context, '017.1. Lists Example', Lists1());

    _addListItem(listRow, context, '017.2. Lists Load More', ListLoadMore());

    _addListItem(listRow, context, '017.3. Lists Load More Swipe refresh',
        ListLoadMoreSwipeRefresh());

    _addListItem(listRow, context, '018.1. Stepper 1', Stepper1());

    _addListItem(listRow, context, '018.2. Stepper 2', Stepper2());

    _addListItem(listRow, context, '018.3. Stepper 3', Stepper3());

    _addListItem(listRow, context, '018.4. Stepper 4', Stepper4());

    _addListItem(listRow, context, '018.5. Stepper 5', Stepper5());

    _addListItem(listRow, context, '019.1. Tab 1', Tab1());

    _addListItem(listRow, context, '019.2. Tab 2', Tab2());

    _addListItem(listRow, context, '019.3. Tab 3', Tab3());

    _addListItem(listRow, context, '020.1. Bottom Navigation bar 1', BottomNavigationBar1());

    _addListItem(listRow, context, '020.2. Bottom Navigation bar 2', BottomNavigationBar2());

    _addListItem(listRow, context, '021.1. Navigation Drawer 1', NavigationDrawerEx1());

    _addListItem(listRow, context, '021.2. Navigation Drawer 2', NavigationDrawerEx2());

    _addListItem(
        listRow, context, '021.3. Navigation Drawer 3', NavigationDrawerEx3());

    _addListItem(
        listRow, context, '021.4. Navigation Drawer 4', NavigationDrawerEx4());

    _addListItem(listRow, context, '022. Page view', PageViewEx1());

    _addListItem(listRow, context, '023.1. RxDart ex1', RxDartEx1());

    _addListItem(listRow, context, '023.2. RxDart ex2', RxDartEx2());

    return ListView(
      children: listRow,
    );
  }

  _addListItem(List<Widget> listRow, BuildContext context, String title,
      Widget widgetScreen) {
    listRow.add(_rowItem(context, title,
        onClick: () => Utils.navigationPush(context, widgetScreen)));
  }

  _rowItem(BuildContext context, String text, {Function onClick}) {
    return Card(
      child: InkWell(
          splashColor: Colors.red,
          hoverColor: Colors.green,
          onTap: onClick,
          child: Container(
              margin: EdgeInsets.all(15),
              child: Text(
                text,
                style: TextStyle(fontWeight: FontWeight.w400),
              ))),
    );
  }
}
