class InMemoryCache<T> {
  DateTime? lastUpdatedAt;
  Duration expiresAfter = Duration(minutes: 5);
  T? _cachedValue;

  bool get isEmpty {
    if (getCachedValue() == null)
      return true;
    else if (T is List)
      return (getCachedValue() as List).isEmpty;
    else
      return false;
  }

  bool get isNotEmpty => !isEmpty;

  bool get hasExpired =>
      lastUpdatedAt?.add(expiresAfter).isBefore(DateTime.now()) ?? true;

  bool get hasNotExpired => !hasExpired;

  bool get loadLocal => isNotEmpty && hasNotExpired;

  T? getCachedValue() => _cachedValue;

  void save(T data) {
    _cachedValue = data;
    lastUpdatedAt = DateTime.now();
  }

  void clean() {
    _cachedValue = null;
  }

  void expireAfter(Duration dateTime) {
    expiresAfter = dateTime;
  }
}
