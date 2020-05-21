/*
 * Copyright(c) 2020,  MBC Team
 * 项目名称:flutter-redux-sample
 * 文件名称:book_reducer.dart
 * Date:5/21/20, 11:05 AM
 * Author: Eric Li
 */

import 'package:redux/redux.dart';
import "package:flutter_redux_sample/redux_store_connector/book.dart";

final BookReducer = combineReducers<Book>([
  TypedReducer<Book, AddBookAction>(_add),
  TypedReducer<Book, UpdateBookAction>(_update),
]);

Book _add(Book book, AddBookAction addAction) {
  addAction.book.name = '疯狂Android';
  book = addAction.book;
  return book;
}

class AddBookAction {
  Book book;
  AddBookAction(this.book);
}

Book _update(Book book, UpdateBookAction updateAction) {
  updateAction.book.name = 'none bookName';
  book = updateAction.book;
  return book;
}

class UpdateBookAction {
  Book book;
  UpdateBookAction(this.book);
}