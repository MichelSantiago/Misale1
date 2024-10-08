import '../models/user.dart';

/*
  Os mapas são coleções de dados organizados em um formato chave-valor.
  Cada elemento inserido em um mapa no Dart possui uma chave a ele relacionado.
  Os mapas são estruturas muito úteis quando precisamos relacionar cada elemento com um identificador único.
  Sendo assim, veremos neste artigo os principais métodos para manipulação de mapas no Dart.
*/
//              child: Image.network('assets/imagens/login.png'),
Map DUMMY_USERS = {
  '1': const User(
      id: '1',
      codigo: '143060',
      descricao: 'Martelo',
      avatarUrl:'assets/imagens/martelo1.png',
      ),
  '2': const User(
      id: '2',
      codigo: '185991',
      descricao: 'Parafuso',
      avatarUrl:
      'assets/imagens/parafuso.png'),
  '3': const User(
      id: '3',
      codigo: '188813',
      descricao: 'Chave',
      avatarUrl:
      'assets/imagens/chave.png'),
  '4': const User(
      id: '4',
      codigo: '185005',
      descricao: 'Alicate',
      avatarUrl:
      'assets/imagens/alicate.png'),
};
