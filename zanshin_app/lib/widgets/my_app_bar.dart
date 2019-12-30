import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String titulo;
  MyAppBar({@required this.titulo});
  Widget _buildAppBarr(String titulo) {
    return AppBar(
      title: Text(
        titulo,
        textAlign: TextAlign.center,
      ),
      elevation: 00,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildAppBarr(titulo);
  }
}
