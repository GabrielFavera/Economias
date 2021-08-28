import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;

class PokemonService {
  Future<String> getNameRandom() async {
    var _response =
        await http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon"));

    if (_response.statusCode == 200) {
      //obtem a lista e decodifica o corpo em json, converter o objecto results em lista
      var _listPokemon = jsonDecode(_response.body)["results"] as List;

      // gera um numero aleatorios com base no tamanho da lista
      var _index = Random().nextInt(_listPokemon.length);

      //obtem um nome na lista de acordo a posição aleatoria, o mesmo é obtido na coluna name
      var _name = _listPokemon[_index]["name"];

      return _name;
    }

    return "Não especificado";
  }
}
