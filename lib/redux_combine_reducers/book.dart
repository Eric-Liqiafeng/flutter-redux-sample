/*
 * Copyright(c) 2020,  MBC Team
 * 项目名称:flutter-redux-sample
 * 文件名称:book_model.dart
 * Date:5/20/20, 4:59 PM
 * Author: Eric Li
 */

class Book {
  String name;
  Book(this.name);
  factory Book.initData({String name}) => Book(name ?? 'none username');
}