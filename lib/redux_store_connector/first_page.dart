/*
 * Copyright(c) 2020,  MBC Team
 * 项目名称:flutter-redux-sample
 * 文件名称:first_page.dart
 * Date:5/21/20, 11:05 AM
 * Author: Eric Li
 */

import "package:flutter/material.dart";
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_sample/redux_store_connector/redux_state.dart';
import 'package:flutter_redux_sample/redux_store_connector/second_page.dart';

class FirstPage extends StatefulWidget {

  static final String sName = "/";

  @override
  State createState() => FirstPageState();
}

class FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {

    return StoreBuilder<ReduxState>(
        builder: (BuildContext context, Store<ReduxState> store){
          return Scaffold(
            appBar: AppBar(
              title: Text('ReduxDemo'),
            ),
            body: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 50),
                    Text('username is：' + store.state.user.name),
                    SizedBox(height: 50),
                    Text('bookName is：' + store.state.book.name),
                    SizedBox(height: 100),
                    RaisedButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return SecondPage();
                          }));
                        },
                        child: Text('next page')
                    )
                  ],
                )
            ),
          );
        }
    );
  }
}