import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildComponent(Icon icon, String txt) {
      return Column(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              Text(
                txt,
              ),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Tourism Place',
        ),
      ),
      body: ListView(
        children: [
          Image.asset(
            "assets/images/image.png",
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              bottom: 8,
                            ),
                            child: Text(
                              "That Luang Vientiane",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Text(
                            "Vientiane Capital, Laos",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                        top: 40,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          Text(
                            "100",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildComponent(
                      Icon(
                        Icons.call,
                      ),
                      'Call',
                    ),
                    buildComponent(
                      Icon(
                        Icons.map,
                      ),
                      'Map',
                    ),
                    buildComponent(
                      Icon(
                        Icons.share,
                      ),
                      'Share',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(
              10,
            ),
            child: Text(
              'Felipe, um engenheiro eletrônico, '
              'dirigia pelas ruas movimentadas da '
              'cidade, absorvido em seus pensamentos. '
              'A realidade de ser motorista de aplicativo '
              ' nunca foi seu plano, mas as circunstâncias o '
              ' conduziram por esse caminho. Enquanto'
              'esperava o próximo passageiro, refletia '
              'sobre o que o trouxe até ali e o papel '
              'da engenharia na sociedade moderna.',
            ),
          )
        ],
      ),
    );
  }
}
