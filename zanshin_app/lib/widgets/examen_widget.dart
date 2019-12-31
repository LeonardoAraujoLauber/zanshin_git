import 'package:flutter/material.dart';
import 'package:zanshin_app/datos/examenes.dart';
import 'package:zanshin_app/modulos/examen.dart';

class ExamenWidget extends StatefulWidget {
  MediaQueryData mediaQuery;

  ExamenWidget(this.mediaQuery);

  @override
  _ExamenWidgetState createState() => _ExamenWidgetState();
}

class _ExamenWidgetState extends State<ExamenWidget> {
  int examenMostrado;

  List<Examen> listaExamenes = EXAMENES.map((exData)=> Examen(exData.grado),);

  Widget _builderExamenWidget() {
    return Container(
      height: widget.mediaQuery.size.height * 0.3,
      child: Column(
        children: <Widget>[
          Center(
            child: Text('Examenes'),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_left),
                  ),
                ),
                Container(
                  child: Text(
                    listaExamenes[examenMostrado].grado,
                  ),
                ),
                Container(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_left),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _builderExamenWidget();
  }
}
