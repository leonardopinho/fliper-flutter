extension StorieName on String {
  String ToStorie() {
    return '${this.substring(0, 8)}...';
  }
}