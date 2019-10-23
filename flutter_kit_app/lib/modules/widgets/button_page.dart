import 'package:flutter/material.dart';
import 'package:flutter_kit_app/modules/routers/routers.dart';
import 'package:flutter_kit_app/utils/view_util.dart';

class ButtonPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ButtonPageState();
  }
}

class _ButtonPageState extends State<ButtonPage> {
  double _volume = 0.0;
  var _selection;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: ViewUtil.createAppBar(Routes.buttonPage),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // This menu button widget updates a _selection field (of type WhyFarther,
              // not shown here).

              ButtonBar(
                alignment: MainAxisAlignment.spaceAround,
                //布局方向，默认MainAxisAlignment.end
                mainAxisSize: MainAxisSize.min,
                //主轴大小，默认MainAxisSize.max
                children: <Widget>[
                  // Button集合
                  RaisedButton(
                    child: Text('ButtonBar1'),
                    color: Colors.red,
                    onPressed: () => {},
                  ),
                  RaisedButton(
                    child: Text('ButtonBar2'),
                    color: Colors.red,
                    onPressed: () => {},
                  ),
                  PopupMenuButton<WhyFarther>(
                    onSelected: (WhyFarther result) {
                      setState(() {
                        _selection = result;
                      });
                    },
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<WhyFarther>>[
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.harder,
                        child: Text('Working a lot harder'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.smarter,
                        child: Text('Being a lot smarter'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.selfStarter,
                        child: Text('Being a self-starter'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.tradingCharter,
                        child: Text('Placed in charge of trading charter'),
                      ),
                    ],
                  ),
                ],
              ),
              ButtonBar(
                alignment: MainAxisAlignment.end, //布局方向，默认MainAxisAlignment.end
                mainAxisSize: MainAxisSize.min, //主轴大小，默认MainAxisSize.max
                children: <Widget>[
                  // Button集合
                  RaisedButton(
                    child: Text('ButtonBar1'),
                    color: Colors.yellow,
                    onPressed: () => {},
                  ),
                  RaisedButton(
                    child: Text('ButtonBar2'),
                    color: Colors.yellow,
                    onPressed: () => {},
                  ),
                ],
              ),
              const RaisedButton(
                onPressed: null,
                padding: const EdgeInsets.all(10.0),
                child: Text('Disabled Button', style: TextStyle(fontSize: 24)),
              ),
              const SizedBox(height: 30),
              RaisedButton(
                padding: const EdgeInsets.all(10.0),
                onPressed: () {},
                child: const Text('Enabled Button',
                    style: TextStyle(fontSize: 24)),
              ),
              const SizedBox(height: 30),
              RaisedButton(
                onPressed: () {},
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Gradient Button',
                      style: TextStyle(fontSize: 24)),
                ),
              ),
              const SizedBox(height: 30),
              FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(10.0),
                splashColor: Colors.blueAccent,
                onPressed: () {
                  /*...*/
                },
                child: Text(
                  "Flat Button",
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              const SizedBox(height: 30),
              IconButton(
                icon: Icon(Icons.volume_up),
                tooltip: 'Increase volume by 10',
                onPressed: () {
                  setState(() {
                    _volume += 10;
                  });
                },
              ),
              Text('Volume : $_volume'),

              const SizedBox(height: 30),
              Ink(
                decoration: ShapeDecoration(
                  color: Colors.lightBlue,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: Icon(Icons.android),
                  color: Colors.white,
                  onPressed: () {
                    print("filled background");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.navigation),
        backgroundColor: Colors.green,
      ),
    );
  }
}

// This is the type used by the popup menu below.
enum WhyFarther { harder, smarter, selfStarter, tradingCharter }
