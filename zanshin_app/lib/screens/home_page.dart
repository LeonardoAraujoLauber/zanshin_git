/* Crea la primer pagina de la app */

import 'package:flutter/material.dart';
import 'package:zanshin_app/screens/karate_screen.dart';
import 'package:zanshin_app/widgets/contenedor_info_usuario.dart';
import 'package:zanshin_app/widgets/my_app_bar.dart';
import '../widgets/main_drawer.dart';
import '../widgets/barra_inferior.dart';
import '../widgets/actividad_item.dart';

class MyHomePage extends StatelessWidget {
  final title;

  MyHomePage(this.title);
  PreferredSizeWidget _appBar(){
    return AppBar(
      title: Text(
        'Zanshin App',
        textAlign: TextAlign.center,
      ),
      elevation: 00,
    );
  }

  Widget _body(
    BuildContext ctx,
    double size,
    double ancho,
    PreferredSizeWidget appBar,
  ) {
    return Container(
        height: size,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // crea una imagen superior con los horarios del dojo
            Container(
              child: Row(
                children: <Widget>[
                  ContendedorInfoUsuario(tamano: size * 0.2, ancho: ancho),
                ],
              ),
            ),
            Container(
              
              height: size * 0.3,
                    child: Container(
                      padding: EdgeInsets.only(top: size * 0.005, bottom: size *0.005),
                      child: ActividadItem(
                        'karate adultos',
                        'assets/imagen/karateAdultos.jpeg',
                        KarateScreen.ruta,
                      ),
                    ),), //crea el boton para entrar a la pagina correspondiente
                    Container(
                      height: size * 0.2,
                      child: Row (children:[
                      ActividadItem(
                        'martial fit',
                        'assets/imagen/martialFit.jpeg',
                        KarateScreen.ruta,
                      ),
                      ActividadItem(
                        'funcional',
                        'assets/imagen/funcional.jpeg',
                        KarateScreen.ruta,
                      ),]),
                    )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueri = MediaQuery.of(context);
    final PreferredSizeWidget appBar = _appBar();
    //final PreferredSizeWidget barraInferior = _barraInferiror(context);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: appBar,
      drawer: MainDeawer(),
      body: _body(
        context,
        (mediaQueri.size.height - appBar.preferredSize.height) * 0.9,
        mediaQueri.size.width,
        appBar,
      ),
      bottomNavigationBar: BarraIferior(
        ctx: context,
        appBar: appBar,
        mediaQuery: mediaQueri,
      ),
    );
  }
}
