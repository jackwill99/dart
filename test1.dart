class Logger {
  final String name;
  bool mute = false;
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

class Computer {
  final int ram;
  final String chip;
  final String display;
  final bool xbox;
  final int cpu;
  final int neural_engine;

  static bool print = false;

  //! Nameless Generatic Constructor
  // Computer(
  //     {required this.ram,
  //     required this.chip,
  //     required this.display,
  //     required this.cpu,
  //     required this.neural_engine,
  //     required this.xbox});

  //! Named Generative Constructor
  Computer._window(
      {required this.ram,
      required this.display,
      required this.cpu,
      required this.xbox})
      : chip = 'None',
        neural_engine = 0;
  Computer._mac(
      {required this.ram,
      required this.chip,
      required this.display,
      required this.cpu,
      required this.neural_engine})
      : xbox = false;

  static Map<String, dynamic> _cache = <String, dynamic>{};

  //! Named Factory Constructor
  factory Computer.window({
    required ram,
    required display,
    required xbox,
    required cpu,
  }) {
    return _cache.putIfAbsent('window',
        () => Computer._window(ram: 4, display: 'Navidia', cpu: 8, xbox: true));
  }

  Map<String, dynamic> get window {
    return _cache;
  }
}

void main() {
  // var logger = Logger('UI');
  // logger.log('Button clicked');

  // var logMap = {'name': 'UI'};
  // var loggerJson = Logger.fromJson(logMap);
  // loggerJson.log('hay');
  var tt = Computer.window(ram: 4, display: 'Navidia', cpu: 8, xbox: true);
  print(tt.window);
}
