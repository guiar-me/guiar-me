abstract class AlertContract {
  void success({required String title, String? message, int? duration});

  void error({required String title, String? message, int? duration});

  void warning({required String title, String? message, int? duration});

  void info({required String title, String? message, int? duration});
}
