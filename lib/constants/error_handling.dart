import 'dart:convert';
import 'utils.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

void httpErrorHandle({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess,
}) //voidcallback is to recieve a function
{
  switch (response.statusCode) {
    case 200:
      {
        onSuccess();
      }
      break;
    case 400:
      {
        ShowSnakBar(context, jsonDecode(response.body)['msg']);
      }
      break;
    case 500:
      {
        ShowSnakBar(context, jsonDecode(response.body)['error']);
      }
      break;
    default:
      {
        ShowSnakBar(context, response.body);
      }
  }
}
