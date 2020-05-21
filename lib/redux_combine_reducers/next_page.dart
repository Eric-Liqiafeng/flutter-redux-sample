/*
 * Copyright(c) 2020,  MBC Team
 * 项目名称:flutter-redux-sample
 * 文件名称:second_page.dart
 * Date:5/20/20, 5:01 PM
 * Author: Eric Li
 */

import "package:flutter/material.dart";
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_sample/redux_combine_reducers/redux_state.dart';
import 'package:flutter_redux_sample/redux_combine_reducers/user_reducer.dart';
import 'package:flutter_redux_sample/redux_combine_reducers/book_reducer.dart';

class NextPage extends StatefulWidget {

  @override
  State createState() => NextPageState();
}

class NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {

    /// StoreBuilder
    return StoreBuilder<ReduxState>(
        builder: (BuildContext context, Store<ReduxState> store){
          return Scaffold(
            appBar: AppBar(
              title: Text('second page'),
            ),
            body: Center(
                child: Column(
                  children: <Widget>[
                    Text(store.state.user.name),
                    Text(store.state.book.name),
                    SizedBox(height: 100,),
                    RaisedButton(
                        onPressed: (){
                          store.dispatch(AddUserAction(store.state.user));
                        },
                        child: Text('add username')
                    ),
                    RaisedButton(
                        onPressed: (){
                          store.dispatch(UpdateUserAction(store.state.user));
                        },
                        child: Text("update username")
                    ),
                    RaisedButton(
                        onPressed: (){
                          store.dispatch(AddBookAction(store.state.book));
                        },
                        child: Text('add bookName')
                    ),
                    RaisedButton(
                        onPressed: (){
                          store.dispatch(UpdateBookAction(store.state.book));
                        },
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
