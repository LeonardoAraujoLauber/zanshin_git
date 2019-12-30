import 'package:flutter/material.dart';
import '../modulos/actividades/karate_adultos.dart';

class PaginaActividad extends StatefulWidget {
  String foto;
  final String titulo ;

  PaginaActividad(this.titulo){
    if(titulo.compareTo('karate niños') == 0){
      foto = 'assets/imagen/ninos.jpeg';
    }else if(titulo.compareTo('karate adultos') == 0) {
      foto = 'assets/imagen/karateAdultos.jpeg';
    } else if (titulo.compareTo('martial fit') == 0) {
      foto = 'assets/imagen/martialFit.jpeg';
    }
    else {
      foto = 'assets/imagen/funcional.jpeg';
    }
  }

  @override
  _PaginaActividadState createState() => _PaginaActividadState();
}

class _PaginaActividadState extends State<PaginaActividad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.titulo,
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
      body: KarateAdultos(),
      //Image.asset(widget.foto, fit: BoxFit.cover,),

      bottomNavigationBar: BottomNavigationBar(
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
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}