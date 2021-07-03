import 'package:cat_api/src/model/cat_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PokemonesProvider {
  final String _url = 'https://aws.random.cat/meow';
  final http = Dio();

  Future obtenerDog() async {
    final response = await http.get(_url);
    List<dynamic> responseData = response.data['results'];
    responseData.map((cat) {
      return CatModel.fromJson(cat);
    }).toList();
  }
}
