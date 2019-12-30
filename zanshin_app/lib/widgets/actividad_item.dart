import 'package:flutter/material.dart';
import 'package:zanshin_app/screens/karate_screen.dart';
import '../screens/pagina_actividad.dart';

class ActividadItem extends StatelessWidget {
  final String nombre;
  final String imagen;
  final String ruta;
  const ActividadItem(
    this.nombre,
    this.imagen,
    this.ruta,
  );

  void elegirActividad(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(ruta);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => elegirActividad(context),
      child: Container(
        //padding: const EdgeInsets.all(15),
        child: Image.asset(
          imagen,
          fit: BoxFit.cover,
        ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}