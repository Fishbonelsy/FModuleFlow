import 'package:flutter/widgets.dart';

import 'fmodule_model.dart';

abstract class FModule<T extends FModuleModel> {
  Widget createModuleWidget(T model);

  String getKey();
}
