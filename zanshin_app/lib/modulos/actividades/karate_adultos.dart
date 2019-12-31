import 'package:flutter/material.dart';

import '../../datos/katas.dart';

class KarateAdultos extends StatefulWidget {
  @override
  _KarateAdultosState createState() => _KarateAdultosState();
}

class _KarateAdultosState extends State<KarateAdultos> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: true,
      crossAxisCount: 2,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        ExpansionTile(
          initiallyExpanded: false,
          title: Text('Profesores'),
          children: <Widget>[
            Container(
              child: Text('Federuci Diaz'),
            ),
            Container(
              child: Text('Asia Araujo'),
            ),
            Container(
              child: Text('Leonardo Araujo'),
            )
          ],
        ),
        ExpansionTile(
          initiallyExpanded: false,
          title: Text('Historia y Filosofia'),
          children: <Widget>[
            Container(
              child: Text('Matsutatsu Oyama'),
            ),
            Container(
              child: Text('Simbologia'),
            ),
            Container(
              child: Text('Historia'),
            ),
            Container(
              child: Text('Campeones Mundials'),
            )
          ],
        ),
        ExpansionTile(
          initiallyExpanded: false,
          title: Text('Examenes'),
          children: <Widget>[
            Container(
              height: 100,
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Text('Naranja'),
                  ),
                  Container(
                    child: Text('Azul'),
                  ),
                  Container(
                    child: Text('Azul Barra Amarillo'),
                  ),
                  Container(
                    child: Text('Amarillo'),
                  ),
                  Container(
                    child: Text('Amarillo Barra Verde'),
                  ),
                  Container(
                    child: Text('Verde'),
                  ),
                  Container(
                    child: Text('Verde Barra Marron'),
                  ),
                  Container(
                    child: Text('Marron'),
                  ),
                  Container(
                    child: Text('Marron Barra Negro'),
                  ),
                  Container(
                    child: Text('Negro'),
                  ),
                ],
              ),
            ),
          ],
        ),
        ExpansionTile(
          initiallyExpanded: false,
          title: Text('Katas'),
          children: <Widget>[
            Container(
              height: 100,
              child: ListView.builder(
                itemCount: KATAS.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Center(child: Text('${KATAS[index].nombre}')),
                  );
                },
              ),
            )
          ],
        ),
        ExpansionTile(
          initiallyExpanded: false,
          title: Text('Profesores'),
          children: <Widget>[
            Container(
              child: Text('Federuci Diaz'),
            ),
            Container(
              child: Text('Asia Araujo'),
            ),
            Container(
              child: Text('Leonardo Araujo'),
            )
          ],
        ),
        ExpansionTile(
          initiallyExpanded: false,
          title: Text('Profesores'),
          children: <Widget>[
            Container(
              child: Text('Federuci Diaz'),
            ),
            Container(
              child: Text('Asia Araujo'),
            ),
            Container(
              child: Text('Leonardo Araujo'),
            )
          ],
        ),
      ],
    );
  }
}
