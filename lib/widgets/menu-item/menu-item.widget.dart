import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String images;
  final String name;
  final TextStyle textStyle;
  final Function function;

  const MenuItem(
      {Key key, this.images, this.name, this.textStyle, this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        child: Column(
          children: <Widget>[
            Image.asset(
              images,
              scale: 2.5,
            ),
            SizedBox(
              height: 10,
            ),
            Text(name,
                style: textStyle != null
                    ? textStyle
                    : TextStyle(color: Colors.white))
          ],
        ),
      ),
    );
  }
}
