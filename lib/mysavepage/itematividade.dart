import 'package:flutter/material.dart';

class ItemAtividade extends StatefulWidget {
  @override
  _ItemAtividadeState createState() => _ItemAtividadeState();
}

class _ItemAtividadeState extends State<ItemAtividade> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 87,
          width: MediaQuery.of(context).size.width - 85,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          '%',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            '5% DE R\$2500',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Arial_narrow',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            '25 DEZ',
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 17,
                              fontFamily: 'Arial_narrow',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                '+R\$125,00',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontFamily: 'Arial_narrow',
                ),
              ),
            ],
          ),
        ),
          Container(
          height: 2,
          width: MediaQuery.of(context).size.width - 52,
          color: Colors.grey.shade200,
        ),
      ],
    );
  }
}
