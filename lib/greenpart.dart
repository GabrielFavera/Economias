import 'package:desafio/pokemonservice.dart';
import 'package:flutter/material.dart';

class GreenPart extends StatefulWidget {
  @override
  _GreenPartState createState() => _GreenPartState();
}

class _GreenPartState extends State<GreenPart> {
  String _name = 'Clique';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 230,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/fundo_verde.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 230,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/perfil.jpg'),
                          backgroundColor: Colors.transparent,
                          radius: 30,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              'Pagamento na semana',
                              style: TextStyle(
                                color: Colors.green,
                                fontFamily: 'Arial_narrow',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          'Valor disponível:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Arial_narrow',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.007,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          'R\$500,00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Arial_narrow',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.007,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Text(
                            _name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Arial_narrow',
                            ),
                          ),
                          onTap: () async {
                            _name = await PokemonService().getNameRandom();

                            if (_name.isNotEmpty) {
                              setState(() {});
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
