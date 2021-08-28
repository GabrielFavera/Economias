import 'myhomepage/myhomepage.dart';
import 'package:flutter/material.dart';
import 'mysavepage/mysavepage.dart';

class MyBottomBar extends StatefulWidget {
  @override
  _MyBottomBarState createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _indexPagina = 0;
  var _pageController = PageController();
  final _listaPaginas = [MyHomePage(), MySavePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Center(
          child: Text(
            '+',
            style: TextStyle(fontSize: 30),
          ),
        ),
        onPressed: () {},
        backgroundColor: Colors.green.shade600,
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        children: _listaPaginas,
        onPageChanged: (index) {
          setState(() {
            _indexPagina = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _indexPagina,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: ('Gastos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: ('Economias'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: ('Cronograma'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: ('Menu'),
          ),
        ],
        onTap: (index) {
          setState(() {
            _indexPagina = index;
            _pageController.animateToPage(_indexPagina,
                duration: Duration(milliseconds: 200), curve: Curves.linear);
          });
        },
      ),
    );
  }
}
