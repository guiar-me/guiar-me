abstract class AlertContract {
  Future<void> success({required String title, required String message});

  Future<void> error({required String title, required String message});

  Future<void> warning({required String title, required String message});

  Future<void> info({required String title, required String message});
}
