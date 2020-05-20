/*
 * Copyright(c) 2020,  MBC Team
 * 项目名称:flutter-redux-sample
 * 文件名称:redux_state.dart
 * Date:5/20/20, 5:03 PM
 * Author: Eric Li
 */

import "package:flutter_redux_sample/redux_combine_reducers/user.dart";
import "package:flutter_redux_sample/redux_combine_reducers/user_reducer.dart";

import "package:flutter_redux_sample/redux_combine_reducers/book.dart";
import "package:flutter_redux_sample/redux_combine_reducers/book_reducer.dart";

/// 定义一个state
class ReduxState {

  User user;
  Book book;

  ReduxState({this.user, this.book});

}

/// 定义action，将action放到User类里去定义
/// 定义reducer
ReduxState getReducer(ReduxState state, action) {

  return ReduxState(
      user: UserReducer(state.user, action),
      book: BookReducer(state.book, action)
  );
}