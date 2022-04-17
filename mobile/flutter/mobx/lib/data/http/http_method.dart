enum HttpMethod { get, delete, post, put, head, patch }

extension ParseToString on HttpMethod {
  String toShortString() {
    return toString().split('.').last;
  }
}
