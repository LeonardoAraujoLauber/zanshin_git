import 'package:flutter/material.dart';
import 'package:zanshin_app/datos/examenes.dart';
import 'package:zanshin_app/modulos/examen.dart';
//import 'package:zanshin_app/widgets/examen_widget.dart';
import '../widgets/profesores_widget.dart';
import '../widgets/barra_inferior.dart';
import '../widgets/main_drawer.dart';

class KarateScreen extends StatefulWidget {
  static const ruta = '/karate-screen';

  @override
  _KarateScreenState createState() => _KarateScreenState();
}

class _KarateScreenState extends State<KarateScreen> {
  List<Examen> examenes = EXAMENES;
  int examenMostrado = 0;
  PreferredSizeWidget _appBar() {
    return AppBar(
      title: Text(
        'Zanshin App',
        textAlign: TextAlign.center,
      ),
      elevation: 00,
    );
  }

  Widget _builderExamenWidget(MediaQueryData mediaQuery) {
    return Container(
      color: Colors.red,
      height: mediaQuery.size.height * 0.1,
      child: Column(
        children: <Widget>[
          Center(
            child: Text('Examenes', style: TextStyle(fontSize: 30.0),),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        examenMostrado != 0
                            ? examenMostrado--
                            : examenMostrado = (examenes.length - 1);
                      });
                    },
                    icon: Icon(Icons.arrow_left),
                  ),
                ),
                Container(
                  width: mediaQuery.size.width * 0.7,
                  child: Text(
                    examenes[examenMostrado].grado,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Container(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        examenMostrado != (examenes.length - 1)
                            ? examenMostrado++
                            : examenMostrado = 0;
                      });
                    },
                    icon: Icon(Icons.arrow_right),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _body(
    MediaQueryData mediaQuery,
  ) {
    return ListView(
      children: <Widget>[
        ProfesoresWidget(mediaQuery),
        _builderExamenWidget(mediaQuery),
        Container(
          child: InkWell(
            child: Text(
              'Teorico',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {},
          ),
        ),
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
