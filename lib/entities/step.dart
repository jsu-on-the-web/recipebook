import 'package:realm/realm.dart';

part 'step.g.dart';

@RealmModel()
class _Step {
  @PrimaryKey()
  late final int id;

  late int stepNumber;
  late String step;
}
