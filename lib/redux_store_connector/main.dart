/*
 * Copyright(c) 2020,  MBC Team
 * 项目名称:flutter-redux-sample
 * 文件名称:main.dart
 * Date:5/21/20, 11:07 AM
 * Author: Eric Li
 */

import "package:flutter/material.dart";
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_sample/redux_store_connector/redux/store/redux_state.dart';
import 'package:flutter_redux_sample/redux_store_connector/view/first_page.dart';
import 'package:flutter_redux_sample/redux_store_connector/model/user_model.dart';
import 'package:flutter_redux_sample/redux_store_connector/model/book_model.dart';

void main() {
  /// 创建全局Store
  final store = Store<ReduxState>(
      getReducer,
      initialState: ReduxState(
          user: User.initData(),
          book: Book.initData()
      )
  );
  runApp(ReduxDemo(store));
}

class ReduxDemo extends StatelessWidget {

  final Store<ReduxState> store;
  ReduxDemo(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        /// StoreBuilder后要跟上我们定义的那个State类，要不会报错，
        child: StoreBuilder<ReduxState>(builder: (BuildContext context, Store<ReduxState> store){
          return MaterialApp(
            title: 'ReduxDemo',
            theme: new ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: FirstPage(),
          );
        })
    );
  }
}