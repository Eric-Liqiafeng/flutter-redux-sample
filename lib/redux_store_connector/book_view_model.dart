/*
 * Copyright(c) 2020,  MBC Team
 * 项目名称:flutter-redux-sample
 * 文件名称:book_view_model.dart
 * Date:5/21/20, 1:25 PM
 * Author: Eric Li
 */

import 'package:flutter/material.dart';
import 'package:flutter_redux_sample/redux_store_connector/book_reducer.dart';
import 'package:flutter_redux_sample/redux_store_connector/redux_state.dart';
import 'package:redux/redux.dart';

class BookViewModel {
  final String bookName;
  final VoidCallback onAdd;//点击回调
  final VoidCallback onUpdate;//点击回调

  BookViewModel({@required this.bookName, @required this.onAdd, @required this.onUpdate });

  static BookViewModel fromStore(Store<ReduxState> store) {
    return BookViewModel(
      bookName: store.state.book.name,
      onAdd: () => store.dispatch(AddBookAction(store.state.book)),
      onUpdate: () => store.dispatch(UpdateBookAction(store.state.book)),
    );
  }
}