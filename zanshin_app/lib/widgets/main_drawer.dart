import 'package:flutter/material.dart';

class MainDeawer extends StatelessWidget {
  Widget _builsListTil(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text('Menu General'),
          ),
          SizedBox(height: 20,),
          _builsListTil('Notificaciones', Icons.notifications, (){}),
          _builsListTil('Preguntas Frecuentes', Icons.question_answer, (){}),
          _builsListTil('Ayuda', Icons.help, (){}),
          _builsListTil('Configuración', Icons.settings, (){}),
          _builsListTil('Cerrar Sesión', Icons.exit_to_app, (){})
        ],
      ),
    );
  }
}
