import 'package:mobx/mobx.dart';
part 'settings_controller.g.dart';

class SettingsController = SettingsControllerBase with _$SettingsController;

abstract class SettingsControllerBase with Store {

  @observable
  double valueTime = 300;

  @computed
  String get textValueTime => '${(valueTime ~/ 60).toInt()}m ${(valueTime % 60).toInt()}s';   // Resto da divisão por 60

}