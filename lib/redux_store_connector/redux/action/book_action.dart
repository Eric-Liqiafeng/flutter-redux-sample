/*
 * Copyright(c) 2020,  MBC Team
 * 项目名称:flutter-redux-sample
 * 文件名称:book_action.dart
 * Date:5/21/20, 6:04 PM
 * Author: Eric Li
 */

import 'package:flutter_redux_sample/redux_store_connector/model/book_model.dart';

class AddBookAction {
  Book book;
  AddBookAction(this.book);
}

class UpdateBookAction {
  Book book;
  UpdateBookAction(this.book);
}