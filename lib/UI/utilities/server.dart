import 'dart:convert';
import 'dart:io';

import 'package:food_app/UI/home.dart';
import 'package:food_app/utils/constants.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Server {
  req(url, {type = 'get', body}) async {
    try {
      url = '$baseUrl/$url';
    url = Uri.parse(url);
    dynamic res;

    if (type == 'get') {
      res = await http.get(
        url,
        headers: setHeader(),
      );
    } else {
      res = await http.post(
        url,
        body: jsonEncode(body),
        headers: setHeader(),
      );
    }

    if (res.statusCode == 500) {
      //redirect to an error paage
    }

    return json.decode(res.body);
    } on SocketException{
      await Get.offAll(Home());

    }
     catch (e) {
      
    }
    
  }

  setHeader() => {
        'Content-Type': 'application/json',
      };
}
