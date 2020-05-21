/*
 * Copyright(c) 2020,  MBC Team
 * 项目名称:flutter-redux-sample
 * 文件名称:user_view_model.dart
 * Date:5/21/20, 10:05 AM
 * Author: Eric Li
 */

import 'package:flutter/material.dart';
import 'package:flutter_redux_sample/redux_store_connector/redux_state.dart';
import 'package:flutter_redux_sample/redux_store_connector/user_reducer.dart';
import 'package:redux/redux.dart';

class UserViewModel {
  final String username;
  final VoidCallback onAdd;//点击回调
  final VoidCallback onUpdate;//点击回调

  UserViewModel({@required this.username, @required this.onAdd, @required this.onUpdate });

  static UserViewModel fromStore(Store<ReduxState> store) {
    return UserViewModel(
      username: store.state.user.name,
      onAdd: () => store.dispatch(AddUserAction(store.state.user)),
      onUpdate: () => store.dispatch(UpdateUserAction(store.state.user)),
    );
  }
}