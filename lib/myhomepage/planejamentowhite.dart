import 'package:flutter/material.dart';

class PlanejamentoWhite extends StatefulWidget {
  @override
  _PlanejamentoWhiteState createState() => _PlanejamentoWhiteState();
}

class _PlanejamentoWhiteState extends State<PlanejamentoWhite> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 120,
        width: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.circle_notifications,
                    size: 35,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '-150,52',
                    style: TextStyle(
                      color: Colors.green.shade600,
                      fontSize: 18,
                      fontFamily: 'Arial_narrow',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Em 2 dias',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontFamily: 'Arial_narrow',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
