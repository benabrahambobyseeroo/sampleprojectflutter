import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:sampleproject/config/di/injectable.config.dart';
final GetIt getIt = GetIt.instance;
@InjectableInit(  initializerName: 'init',
  preferRelativeImports: true,  asExtension: true, )
 void configureDependencies() => getIt.init();