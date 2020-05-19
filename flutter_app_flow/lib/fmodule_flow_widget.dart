import 'package:flutter/widgets.dart';
import 'package:flutter_app_flow/fmodule.dart';
import 'package:flutter_app_flow/fmodule_model.dart';

class FModuleFlowWidget extends StatelessWidget {
  final Map<String, FModule> _mFModules = Map();
  final List<FModuleModel> _mDataList;

  FModuleFlowWidget(Set<FModule> fModules, this._mDataList) {
    for (FModule fModule in fModules) {
      String key = fModule.getKey();
      _mFModules[key] = fModule;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        FModuleModel model = _mDataList[index];
        FModule module = _mFModules[model.getKey()];
        return module.createModuleWidget(model);
      },
      itemCount: _mDataList.length,
    );
  }
}
