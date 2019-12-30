import 'package:flutter/material.dart';
import '../widgets/barra_inferior.dart';
import '../widgets/main_drawer.dart';

class KarateScreen extends StatefulWidget {
  static const ruta = '/karate-screen';

  @override
  _KarateScreenState createState() => _KarateScreenState();
}

class _KarateScreenState extends State<KarateScreen> {
  PreferredSizeWidget _appBar() {
    return AppBar(
      title: Text(
        'Zanshin App',
        textAlign: TextAlign.center,
      ),
      elevation: 00,
    );
  }

  Widget _opcionesProfes(
    MediaQueryData mediaQuery,
  ) {
    return Container(
      color: Theme.of(context).accentColor,
      child: Column(
        children: <Widget>[
          Container(
            height: (mediaQuery.size.height) * 0.02,
            child: Text('Profesores'),
          ),
          Container(
            width: mediaQuery.size.width,
            height: (mediaQuery.size.height) * 0.20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              Column(
                children: <Widget>[
                  InkWell(
                    onTap: () => {},
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          (mediaQuery.size.width) * 0.06,
                          (mediaQuery.size.height) * 0.05,
                          (mediaQuery.size.width) * 0.06,
                          (mediaQuery.size.height) * 0.05),
                      width: (mediaQuery.size.width) * 0.25,
                      child: new Image.asset(
                        'assets/imagen/silueta.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(child: Text('Federico Diaz'),),
                ],
              ),
              Column(
                children: <Widget>[
                  InkWell(
                    onTap: () => {},
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          (mediaQuery.size.width) * 0.06,
                          (mediaQuery.size.height) * 0.05,
                          (mediaQuery.size.width) * 0.06,
                          (mediaQuery.size.height) * 0.05),
                      width: (mediaQuery.size.width) * 0.25,
                      child: new Image.asset(
                        'assets/imagen/silueta.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(child: Text('Asia Araújo'),),
                ],
              ),
              Column(
                children: <Widget>[
                  InkWell(
                    onTap: () => {},
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          (mediaQuery.size.width) * 0.06,
                          (mediaQuery.size.height) * 0.05,
                          (mediaQuery.size.width) * 0.06,
                          (mediaQuery.size.height) * 0.05),
                      width: (mediaQuery.size.width) * 0.25,
                      child: new Image.asset(
                        'assets/imagen/silueta.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(child: Text('Leonardo Araújo'),),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _body(
    MediaQueryData mediaQuery,
  ) {
    return Column(
      children: <Widget>[
        _opcionesProfes(mediaQuery),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final PreferredSizeWidget appBar = _appBar();
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: appBar,
      drawer: MainDeawer(),
      body: _body(
        mediaQuery,
      ),
      bottomNavigationBar: BarraIferior(
        ctx: context,
        appBar: appBar,
        mediaQuery: MediaQuery.of(context),
      ),
    );
  }
}
