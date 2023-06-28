abstract class SettingOptions {
  int size();
  List<String> names();
  int currentIndex();
}

enum OnPlayOptions implements SettingOptions {
  nothing,
  minimize,
  tray,
  exit;

  @override
  int size() => OnPlayOptions.values.length;

  @override
  List<String> names() => OnPlayOptions.values
      .map((final e) => '${e.name[0].toUpperCase()}${e.name.substring(1)}')
      .toList();

  @override
  int currentIndex() => super.index;
}
