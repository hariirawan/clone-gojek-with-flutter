import 'package:flutter/material.dart';

class ButtonTags extends StatelessWidget {
  final String name;
  final int index;
  final int state;
  final Function function;

  const ButtonTags({Key key, this.name, this.index, this.function, this.state})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Row(
        children: <Widget>[
          RaisedButton(
            color: state == index ? Colors.green[500] : Colors.white,
            child: Text(
              name,
              style: TextStyle(
                  color: state == index ? Colors.white : Colors.grey[500],
                  fontWeight:
                      state == index ? FontWeight.bold : FontWeight.normal),
            ),
            onPressed: function,
            hoverElevation: 0,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
                side: BorderSide(color: Colors.grey[200])),
          ),
          SizedBox(
            width: 5.0,
          )
        ],
      ),
    );
  }
}
