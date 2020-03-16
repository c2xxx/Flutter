/// 更新App版本事件
class UpdateAppEvent {
  final String from;
  final String version;
  final String title;

  UpdateAppEvent(this.from, this.version, this.title);

  @override
  String toString() {
    return "UpdateAppEvent {from: $from, version: $version, title: $title }";
  }
}
