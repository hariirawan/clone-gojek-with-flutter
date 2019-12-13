import 'package:clone_gojek/models/home-tags.model.dart';
import 'package:clone_gojek/widgets/button-tags/button-tags.widget.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, StateSetter setState) => Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Konten buat kamu',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 40.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tag.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return Row(
                      children: <Widget>[
                        SizedBox(
                          width: 35.0,
                        ),
                        ButtonTags(
                          name: tag[index].name,
                          index: index,
                          state: _selectedIndex,
                          function: () =>
                              setState(() => _selectedIndex = index),
                        )
                      ],
                    );
                  }
                  return ButtonTags(
                    name: tag[index].name,
                    index: index,
                    state: _selectedIndex,
                    function: () => setState(() => _selectedIndex = index),
                  );
                },
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[Text("gonews")],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Ada berita baru nih?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    Text(
                      "Lihat semua",
                      style: TextStyle(
                          color: Colors.green[500],
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 300,
                    child: Text(
                        "Yap Topik di GoNews makin banyak, biar kamu bacanya makin puas, Powered by Google ..."),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      image: DecorationImage(
                          image: AssetImage('images/bannernews.png'),
                          fit: BoxFit.cover)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
