/*
 * Copyright(c) 2020,  MBC Team
 * 项目名称:flutter-redux-sample
 * 文件名称:user_model.dart
 * Date:5/20/20, 5:01 PM
 * Author: Eric Li
 */

class User {
  String name;
  User(this.name);
  factory User.initData({String name}) => User(name ?? 'none username');
}