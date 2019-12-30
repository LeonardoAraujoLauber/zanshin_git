import 'package:flutter/material.dart';

class BarraIferior extends StatelessWidget {
  final BuildContext ctx;
  final MediaQueryData mediaQuery;
  final PreferredSizeWidget appBar;

  BarraIferior({
    @required this.ctx,
    @required this.mediaQuery,
    @required this.appBar,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (mediaQuery.size.height - appBar.preferredSize.height) * 0.1,
      child: BottomNavigationBar(
        elevation: 5,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
        ],
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        backgroundColor: Theme.of(ctx).accentColor,
      ),
    );
  }
}
