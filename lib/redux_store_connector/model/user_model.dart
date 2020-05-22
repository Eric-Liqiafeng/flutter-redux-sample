/*
 * Copyright(c) 2020,  MBC Team
 * 项目名称:flutter-redux-sample
 * 文件名称:user_model.dart
 * Date:5/21/20, 2:27 PM
 * Author: Eric Li
 */

class User {
  String name;
  User(this.name);
  factory User.initData({String name}) => User(name ?? 'none username');
}