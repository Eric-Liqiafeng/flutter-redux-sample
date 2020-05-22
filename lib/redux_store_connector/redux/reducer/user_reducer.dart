/*
 * Copyright(c) 2020,  MBC Team
 * 项目名称:flutter-redux-sample
 * 文件名称:user_reducer.dart
 * Date:5/21/20, 1:51 PM
 * Author: Eric Li
 */

import 'package:flutter_redux_sample/redux_store_connector/redux/action/user_action.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux_sample/redux_store_connector/model/user_model.dart';

/// 这里combineReducers的作用是把action和函数绑定起来，
/// 免去了写例如if (action is IncreaseAction)之类的判断语句。
/// 对应的action执行对应的函数。
final UserReducer = combineReducers<User>([
  TypedReducer<User, AddUserAction>(_add),
  TypedReducer<User, UpdateUserAction>(_update),
]);

/// 定义了一个要与AddUserAction绑定一起函数
/// 该函数的作用主要是修改数据，就是之前的if和else里各自要处理的逻辑
User _add(User user, AddUserAction addAction) {
  addAction.user.name = 'eric';
  user = addAction.user;
  return user;
}

User _update(User user, UpdateUserAction updateAction) {
  updateAction.user.name = 'none username';
  user = updateAction.user;
  return user;
}