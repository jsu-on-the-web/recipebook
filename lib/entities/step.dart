import 'package:realm/realm.dart';

part 'step.g.dart';

@RealmModel()
class _Step {
  @PrimaryKey()
  late final int id;

  @MapTo('step_number')
  late int stepNumber;

  @MapTo('step')
  late String step;
}
