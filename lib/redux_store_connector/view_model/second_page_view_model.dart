/*
 * Copyright(c) 2020,  MBC Team
 * 项目名称:flutter-redux-sample
 * 文件名称:second_page_view_model.dart
 * Date:5/21/20, 2:11 PM
 * Author: Eric Li
 */

import 'package:flutter/material.dart';
import 'package:flutter_redux_sample/redux_store_connector/view_model/book_view_model.dart';
import 'package:flutter_redux_sample/redux_store_connector/redux/store/redux_state.dart';
import 'package:flutter_redux_sample/redux_store_connector/view_model/user_view_model.dart';
import 'package:redux/redux.dart';

class SecondPageViewModel {
  final UserViewModel userViewModel;
  final BookViewModel bookViewModel;

  SecondPageViewModel({@required this.userViewModel, @required this.bookViewModel});

  static SecondPageViewModel fromStore(Store<ReduxState> store) {
    return SecondPageViewModel(
      userViewModel: UserViewModel.fromStore(store),
      bookViewModel: BookViewModel.fromStore(store)
    );
  }
}