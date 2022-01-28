import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  //const SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Icon customIcon = Icon(Icons.search);
  Icon customIcon2 = Icon(Icons.search);

  bool changeIcon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(changeIcon ? Icons.arrow_back : Icons.search),
                  onPressed: () {
                    print('icon clicke');
                    Navigator.pushNamed(context, '/');
                  },
                ),
                Expanded(
                    child: TextField(
                        autocorrect: true,
                        decoration: new InputDecoration(
                            border: InputBorder.none,
                            hintText: '        Search Your products here'),
                        onChanged: (value) {
                          print("The value entered is : $value");
                          setState(() {
                            if (value.length > 0) {
                              changeIcon = true;
                            } else {
                              changeIcon = false;
                            }
                          });
                        }))
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    height: 1,
                    indent: 15,
                    endIndent: 15,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void connectDb()
  {
    var settings = new ConnectionSettings(
        host: 'localhost',
        port: 3306,
        user: 'bob',
        password: 'wibble',
        db: 'mydb'
    );
    var conn = await MySqlConnection.connect(settings);
  }
}
