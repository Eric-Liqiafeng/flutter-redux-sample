/*
 * Copyright(c) 2020,  MBC Team
 * 项目名称:flutter-redux-sample
 * 文件名称:user_action.dart
 * Date:5/21/20, 6:00 PM
 * Author: Eric Li
 */

import 'package:flutter_redux_sample/redux_store_connector/model/user_model.dart';

/// 定义了一个 action AddUserAction
class AddUserAction {
  User user;
  AddUserAction(this.user);
}

class UpdateUserAction {
  User user;
  UpdateUserAction(this.user);
}