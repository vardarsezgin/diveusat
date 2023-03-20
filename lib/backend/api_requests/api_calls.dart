import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class WeatherAPICall {
  static Future<ApiCallResponse> call({
    String? place = 'bursa',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'WeatherAPI',
      apiUrl: 'https://weatherapi-com.p.rapidapi.com/current.json?q=${place}',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '8737467e87msh5abd86fc47c5e32p19bf93jsna6eeaab7a536',
        'X-RapidAPI-Host': 'weatherapi-com.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic locationname(dynamic response) => getJsonField(
        response,
        r'''$.location.name''',
      );
  static dynamic locationregion(dynamic response) => getJsonField(
        response,
        r'''$.location.region''',
      );
  static dynamic locationcountry(dynamic response) => getJsonField(
        response,
        r'''$.location.country''',
      );
  static dynamic locationtzid(dynamic response) => getJsonField(
        response,
        r'''$.location.tz_id''',
      );
  static dynamic locationlocaltime(dynamic response) => getJsonField(
        response,
        r'''$.location.localtime''',
      );
  static dynamic currentconditiontext(dynamic response) => getJsonField(
        response,
        r'''$.current.condition.text''',
      );
  static dynamic currentwindkph(dynamic response) => getJsonField(
        response,
        r'''$.current.wind_kph''',
      );
  static dynamic currentisday(dynamic response) => getJsonField(
        response,
        r'''$.current.is_day''',
      );
  static dynamic currentfeelslikec(dynamic response) => getJsonField(
        response,
        r'''$.current.feelslike_c''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
