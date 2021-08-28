import 'package:desafio/mysavepage/itematividade.dart';
import 'package:flutter/material.dart';

class GreyPartSave extends StatefulWidget {
  @override
  _GreyPartSaveState createState() => _GreyPartSaveState();
}

class _GreyPartSaveState extends State<GreyPartSave> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(26, 0, 0, 0),
                child: Text(
                  'Economize 5% por dia de pagamento',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Arial_narrow',
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Atividade',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Arial_narrow',
                ),
              ),
              Text(
                'Ver todos >',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontFamily: 'Arial_narrow',
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: MediaQuery.of(context).size.width - 52,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                ItemAtividade(),
                ItemAtividade(),
                ItemAtividade(),
                ItemAtividade(),
                ItemAtividade(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
