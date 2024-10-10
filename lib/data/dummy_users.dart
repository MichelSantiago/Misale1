import '../models/user.dart';

/*
  Os mapas são coleções de dados organizados em um formato chave-valor.
  Cada elemento inserido em um mapa no Dart possui uma chave a ele relacionado.
  Os mapas são estruturas muito úteis quando precisamos relacionar cada elemento com um identificador único.
  Sendo assim, veremos neste artigo os principais métodos para manipulação de mapas no Dart.
*/

Map DUMMY_USERS = {

  '1': const User(
    id: '1',
    codigo: '143060',
    descricao: 'Martelo',
    quantidade: '5',
    avatarUrl:
    'assets/imagens/Martelo.png',),

  '2': const User(
      id: '2',
      codigo: '185991',
      descricao: 'Parafuso',
      quantidade: '14',
      avatarUrl:
      'assets/imagens/Parafuso.png'),

  '3': const User(
      id: '3',
      codigo: '188813',
      descricao: 'Chave Philips',
      quantidade: '7',
      avatarUrl:
      'assets/imagens/Chave1.png'),

  '4': const User(
      id: '4',
      codigo: '185005',
      descricao: 'Alicate',
      quantidade: '24',
      avatarUrl:
      'assets/imagens/Alicate.png'),

  '5': const User(
      id: '4',
      codigo: '184945',
      descricao: 'Arruela',
      quantidade: '16',
      avatarUrl:
      'assets/imagens/Arruela.png'),

  '6': const User(
      id: '4',
      codigo: '158785',
      descricao: 'Broca',
      quantidade: '21',
      avatarUrl:
      'assets/imagens/Broca.png'),

  '7': const User(
      id: '4',
      codigo: '158985',
      descricao: 'cabo de internet',
      quantidade: '16',
      avatarUrl:
      'assets/imagens/Internet.png'),


};


