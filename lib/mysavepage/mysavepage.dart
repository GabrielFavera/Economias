import 'package:desafio/greenpart.dart';
import 'package:desafio/mysavepage/greypartsave.dart';
import 'package:flutter/material.dart';


class MySavePage extends StatefulWidget {
  @override
  _MySavePageState createState() => _MySavePageState();
}

class _MySavePageState extends State<MySavePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            GreenPart(),
            GreyPartSave(),
          ],
        ),
      ),
    );
  }
}
