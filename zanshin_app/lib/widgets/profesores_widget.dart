import 'package:flutter/material.dart';

class ProfesoresWidget extends StatelessWidget {
  MediaQueryData _mediaQuery;

  ProfesoresWidget(this._mediaQuery);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
      child: Column(
        children: <Widget>[
          Container(
            height: (_mediaQuery.size.height) * 0.02,
            child: Text('Profesores'),
          ),
          Container(
            width: _mediaQuery.size.width,
            height: (_mediaQuery.size.height) * 0.20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              Column(
                children: <Widget>[
                  InkWell(
                    onTap: () => {},
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          (_mediaQuery.size.width) * 0.06,
                          (_mediaQuery.size.height) * 0.05,
                          (_mediaQuery.size.width) * 0.06,
                          (_mediaQuery.size.height) * 0.05),
                      width: (_mediaQuery.size.width) * 0.25,
                      child: new Image.asset(
                        'assets/imagen/silueta.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(child: Text('Federico Diaz'),),
                ],
              ),
              Column(
                children: <Widget>[
                  InkWell(
                    onTap: () => {},
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          (_mediaQuery.size.width) * 0.06,
                          (_mediaQuery.size.height) * 0.05,
                          (_mediaQuery.size.width) * 0.06,
                          (_mediaQuery.size.height) * 0.05),
                      width: (_mediaQuery.size.width) * 0.25,
                      child: new Image.asset(
                        'assets/imagen/silueta.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(child: Text('Asia Araújo'),),
                ],
              ),
              Column(
                children: <Widget>[
                  InkWell(
                    onTap: () => {},
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          (_mediaQuery.size.width) * 0.06,
                          (_mediaQuery.size.height) * 0.05,
                          (_mediaQuery.size.width) * 0.06,
                          (_mediaQuery.size.height) * 0.05),
                      width: (_mediaQuery.size.width) * 0.25,
                      child: new Image.asset(
                        'assets/imagen/silueta.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(child: Text('Leonardo Araújo'),),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}