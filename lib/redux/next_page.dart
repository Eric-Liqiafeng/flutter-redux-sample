/*
 * Copyright(c) 2020,  MBC Team
 * 项目名称:flutter-redux-sample
 * 文件名称:second_page.dart
 * Date:5/20/20, 4:03 PM
 * Author: Eric Li
 */

import "package:flutter/material.dart";
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_sample/redux/redux_state.dart';

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
                    Text(store.state.name),
                    SizedBox(height: 100),
                    RaisedButton(
                        onPressed: (){
                          store.dispatch(ReduxAction.Change);
                        },
                        child: Text('change name')
                    )
                  ],
                )
            ),
          );
        }
    );
  }
}