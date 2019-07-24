export 'presenter.dart';
export 'view.dart';

enum PickerType {
  ///
  /// Define this enum for declare the top position of input verticaly
  ///
  ///
  Date,

  ///
  /// Define this enum for declare the center position of input verticaly
  ///
  ///
  Center,

  ///
  /// Define this enum for declare the top bottom of input verticaly
  ///
  ///
  Bottom
}

class User {
  int id;
  String nama;
  String address;
  String phone;
  int age;

  User({this.id, this.nama, this.address, this.age, this.phone});
}
