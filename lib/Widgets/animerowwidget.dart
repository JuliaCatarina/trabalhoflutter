import 'dart:html';

import 'package:animelife/Widgets/anime_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimeRowWidget extends StatelessWidget {
  final List<String> nome;
  final List<String> url;
  final String titulo;
  const AnimeRowWidget(
      {Key? key, required this.nome, required this.url, required this.titulo})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 16, left: 16),
            alignment: Alignment.centerLeft,
            child: Text(
              titulo,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          CupertinoScrollbar(
            child: Container(
              margin: EdgeInsets.only(bottom: 8, top: 16),
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                itemCount: nome.length,
                itemBuilder: (context, index) => AnimeCardWidget(
                  nome: nome[index],
                  url: url[index],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
