/*
 * Copyright(c) 2020,  MBC Team
 * 项目名称:flutter-redux-sample
 * 文件名称:book_reducer.dart
 * Date:5/21/20, 1:51 PM
 * Author: Eric Li
 */

import 'package:flutter_redux_sample/redux_store_connector/redux/action/book_action.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux_sample/redux_store_connector/model/book_model.dart';

final BookReducer = combineReducers<Book>([
  TypedReducer<Book, AddBookAction>(_add),
  TypedReducer<Book, UpdateBookAction>(_update),
]);

Book _add(Book book, AddBookAction addAction) {
  addAction.book.name = '疯狂Android';
  book = addAction.book;
  return book;
}

Book _update(Book book, UpdateBookAction updateAction) {
  updateAction.book.name = 'none bookName';
  book = updateAction.book;
  return book;
}