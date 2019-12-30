import 'package:flutter/material.dart';

class ContendedorInfoUsuario extends StatelessWidget {
  final double tamano;
  final double ancho;
  String imagen =
      'https://photos.google.com/u/1/album/AF1QipMAfrSizHhUCkA7w0dT8xl_QLEerZBKQpAKRm7_/photo/AF1QipNN4m_-W9aWNWUa2Np1UupR0I_FWZoevUBXWuWO';
  ContendedorInfoUsuario({this.tamano, this.ancho});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
      height: tamano,
      child: Row(
        children: <Widget>[
          Container(
            width: ancho * 0.1,
          ),
          Container(
            width: ancho * 0.2,
            height: ancho * 0.2,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: new AssetImage('assets/imagen/silueta.jpeg'),
                )),
          ),
          Container(
            width: ancho * 0.7,
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: <Widget>[
                Center(
                  child: Container(
                      padding: EdgeInsets.only(top: tamano * 0.25, bottom: tamano * 0.05),
                      child: Text(
                        'nombre',
                      )),
                ),
                Center(
                    child: Container(
                        padding:
                            EdgeInsets.only( bottom: tamano*0.05),
                        child: Text('celular'))),
                Center(
                        child: Text('email'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
