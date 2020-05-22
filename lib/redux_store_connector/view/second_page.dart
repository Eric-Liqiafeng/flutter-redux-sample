/*
 * Copyright(c) 2020,  MBC Team
 * 项目名称:flutter-redux-sample
 * 文件名称:second_page.dart
 * Date:5/21/20, 1:49 PM
 * Author: Eric Li
 */

import "package:flutter/material.dart";
import 'package:flutter_redux_sample/redux_store_connector/view_model/second_page_view_model.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_sample/redux_store_connector/redux/store/redux_state.dart';
import 'package:flutter_redux_sample/redux_store_connector/redux/reducer/user_reducer.dart';
import 'package:flutter_redux_sample/redux_store_connector/redux/reducer/book_reducer.dart';

class SecondPage extends StatefulWidget {

  @override
  State createState() => SecondPageState();
}

class SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {

    /// StoreBuilder
    return StoreConnector<ReduxState, SecondPageViewModel>(
        converter: SecondPageViewModel.fromStore,
        builder: (BuildContext context, SecondPageViewModel vm){
          return Scaffold(
            appBar: AppBar(
              title: Text('second page'),
            ),
            body: Center(
                child: Column(
                  children: <Widget>[
                    Text(vm.userViewModel.username),
                    Text(vm.bookViewModel.bookName),
                    SizedBox(height: 100,),
                    RaisedButton(
                        onPressed: vm.userViewModel.onAdd,
                        child: Text('add username')
                    ),
                    RaisedButton(
                        onPressed: vm.userViewModel.onUpdate,
                        child: Text("update username")
                    ),
                    RaisedButton(
                        onPressed: vm.bookViewModel.onAdd,
                        child: Text('add bookName')
                    ),
                    RaisedButton(
                        onPressed: vm.bookViewModel.onUpdate,
                        child: Text('update bookName')
                    )
                  ],
                )
            ),
          );
        }
    );
  }
}
