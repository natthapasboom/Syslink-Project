import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() => runApp(ReLocation());

class ReLocation extends StatefulWidget {
  @override
  _ReLocationState createState() => _ReLocationState();
}

class _ReLocationState extends State<ReLocation> {
  String locationMessage = "";

  void getCurrentLocation() async {
    final position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position);

    setState(() {
      locationMessage = "${position.latitude}, ${position.longitude}";
    });
  }

  List project = ["A", "B"];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String selectedProject;

  @override
  void initState() {
    _dropDownMenuItems = buildAndGetDropDownMenuItems(project);
    selectedProject = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List fruits) {
    List<DropdownMenuItem<String>> items = List();
    for (String fruit in fruits) {
      items.add(DropdownMenuItem(value: fruit, child: Text(fruit)));
    }
    return items;
  }

  void changedDropDownItem(String selectedFruit) {
    setState(() {
      selectedProject = selectedFruit;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 35,
          width: 240,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15),
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.black,
                    size: 15,
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    '$locationMessage',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Prompt',
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 15),
        Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 30,
                  width: 100,
                  child: OutlineButton(
                    onPressed: () => {getCurrentLocation()},
                    textColor: Colors.grey,
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 1.0,
                        style: BorderStyle.solid),
                    child: Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.refresh,
                              color: Colors.white,
                              size: 15,
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '  Refresh',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Prompt',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 30,
                  width: 130,
                  child: OutlineButton(
                    onPressed: () => {},
                    textColor: Colors.grey,
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 1.0,
                        style: BorderStyle.solid),
                    child: Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'เลือกโครงการ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Prompt',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            // DropdownButton(
                            //   value: _selectedProject,
                            //   items: _dropDownMenuItems,
                            //   onChanged: changedDropDownItem,
                            // )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
