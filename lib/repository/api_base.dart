import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:dio/dio.dart';

import 'package:flutter/foundation.dart';


class Account {
  String? email;
  String? password;

  Account({this.email, this.password});

  Account.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}

Account accountFromJson(String str) =>
    Account.fromJson(json.decode(str));

String accountToJson(Account data) => json.encode(data.toJson());

class User {

  Future<Account> getAccount() async {
    final response =
        await http.get(Uri.parse('https://reqres.in/api/login'));
    // final account = accountFromJson(response.body);
    // return account;
    if (response.statusCode == 200) {
      return accountFromJson(response.body);
    } else {
      throw Exception("Failed to load Account");
    }
  }
}
