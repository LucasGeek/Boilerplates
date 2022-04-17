import 'package:localstorage/localstorage.dart';

import '../../../infra/infra.dart';

SharedStorageAdapter makeSharedStorageAdapter() => SharedStorageAdapter(
      localStorage: LocalStorage('gift'),
    );
