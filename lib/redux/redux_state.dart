/*
 * Copyright(c) 2020,  MBC Team
 * 项目名称:flutter-redux-sample
 * 文件名称:redux_state.dart
 * Date:5/20/20, 4:05 PM
 * Author: Eric Li
 */

/// 定义一个state
class ReduxState {
  String name;
  ReduxState(this.name);
  factory ReduxState.initState({String name}) => ReduxState(name ?? 'eric');
}

/// 定义action
enum ReduxAction {
  Change
}

/// 定义reducer
ReduxState getReducer(ReduxState state, dynamic action) {
  if(action == ReduxAction.Change) {
    String str = '6';
    state.name = state.name + str;
  }
  return state;
}