import 'package:flutter/material.dart';
import 'package:zanshin_app/widgets/barra_inferior.dart';
import 'package:zanshin_app/widgets/main_drawer.dart';
import 'package:zanshin_app/widgets/my_app_bar.dart';


class KarateScreen extends StatefulWidget {
  static const ruta = '/karate-screen';

  @override
  _KarateScreenState createState() => _KarateScreenState();
}

class _KarateScreenState extends State<KarateScreen> {
   PreferredSizeWidget _appBar(){
    return AppBar(
      title: Text(
        'Zanshin App',
        textAlign: TextAlign.center,
      ),
      elevation: 00,
    );
  }

  @override
  Widget build(BuildContext context) {
    final PreferredSizeWidget appBar = _appBar();
    return Scaffold(
      appBar: appBar,
    drawer: MainDeawer(),
    body: Center(
      child: Text('data'),
    ),
    bottomNavigationBar: BarraIferior(ctx: context,appBar: appBar,mediaQuery: MediaQuery.of(context),),
    );
  }
}