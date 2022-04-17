import 'package:http/http.dart';

import '../../../data/data.dart';
import '../../../infra/infra.dart';

HttpClient makeHttpAdapter() => HttpAdapter(Client());
