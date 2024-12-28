import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * 0.095,
                    child: Placeholder(),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.blue,
                    padding: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: Placeholder(),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 3,
              color: Colors.black,
            ),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    color: Colors.green.shade600,
                    child: Placeholder(),
                    height: MediaQuery.of(context).size.height * 0.45,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    color: Colors.green,
                    child: Placeholder(),
                    height: MediaQuery.of(context).size.height * 0.45,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.yellow,
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: Placeholder(),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.62,
                  color: Colors.red,
                  child: Placeholder(),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.purple,
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: Placeholder(),
                      ),
                      Container(
                        color: Colors.amber,
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: Placeholder(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 3,
              color: Colors.black,
              indent: 25,
              endIndent: 25,
            ),
            Spacer(),
            Divider(
              color: Colors.black,
              thickness: 3,
              indent: 25,
              endIndent: 25,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.blueGrey,
              height: MediaQuery.of(context).size.height * 0.06,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}
