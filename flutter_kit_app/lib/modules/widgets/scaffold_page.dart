import 'package:flutter/material.dart';
import 'package:flutter_kit_app/config/theme.dart';
import 'package:flutter_kit_app/modules/routers/routers.dart';
import 'package:flutter_kit_app/utils/view_util.dart';

class ScaffoldPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ScaffoldPageState();
  }
}


class _ScaffoldPageState extends State<ScaffoldPage> {

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

  int _count = 0;

  Choice _selectedChoice = choices[0]; // The app's "state".

  void _select(Choice choice) {
    setState(() { // Causes the app to rebuild with the new _selectedChoice.
      _selectedChoice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: scaffoldKey,
      appBar: ViewUtil.createAppBar(Routes.scaffoldPage, actions:<Widget>[
        IconButton(
          icon: const Icon(Icons.add_alert),
          tooltip: 'Show Snackbar',
          onPressed: () {
            scaffoldKey.currentState.showSnackBar(snackBar);
          },
        ),
        IconButton(
          icon: const Icon(Icons.open_in_new),
          tooltip: 'Next page',
          onPressed: () {
            openPage(context);
          },
        ),
        new PopupMenuButton<Choice>( // overflow menu
          onSelected: _select,
          itemBuilder: (BuildContext context) {
            return choices.skip(2).map((Choice choice) {
              return new PopupMenuItem<Choice>(
                value: choice,
                child: new Text(choice.title),
              );
            }).toList();
          },
        ),
      ],
      ),
      body: Center(child: Text('You have pressed the button $_count times.')),

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0,),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void openPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Next page'),
          ),
          body: const Center(
            child: Text(
              'This is the next page',
              style: TextStyle(fontSize: 24),
            ),
          ),
        );
      },
    ));
  }
}


class Choice {
  const Choice({ this.title, this.icon });
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({ Key key, this.choice }) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(choice.icon, size: 128.0, color: textStyle.color),
            new Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}
