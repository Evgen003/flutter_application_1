import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:flutter_application_1/di/di.dart';

void setUpDio() {
  dio.options.baseUrl = 'https://wft-geo-db.p.rapidapi.com/v1/geo/';
  dio.options.queryParameters.addAll({
    'api_token': "b5b344bbfbmshd12fd6bb284f6ccp1f5273jsn904933615326",
  });
  dio.options.connectTimeout = const Duration(minutes: 1);
  dio.options.receiveTimeout = const Duration(minutes: 1);
  dio.interceptors.addAll([
    TalkerDioLogger(
      talker: talker,
      settings: const TalkerDioLoggerSettings(
        printRequestData: true,
        printRequestHeaders: true,
      ),
    ),
  ]);
}
