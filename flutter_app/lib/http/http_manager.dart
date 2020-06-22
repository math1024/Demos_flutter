import 'package:dio/dio.dart';
import 'package:yc/http/http_api.dart';
import 'package:yc/http/http_log_interceptor.dart';
import 'package:yc/http/http_response_interceptor.dart';
import 'package:yc/http/http_result_data.dart';

class HttpManager {
  static HttpManager _instance = HttpManager._internal();
  Dio _dio;

  factory HttpManager() => _instance;

  ///通用全局单例，第一次使用时初始化
  HttpManager._internal({String baseUrl}) {
    if (null == _dio) {
      _dio = new Dio(new BaseOptions(
        baseUrl: HttpApi.BASE_URL,
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
        receiveDataWhenStatusError: false,
        connectTimeout: 30000,
        receiveTimeout: 3000,
      ));

      _dio.interceptors.add(LogsInterceptors());
      _dio.interceptors.add(ResponseInterceptors());
    }
  }

  static HttpManager getInstance({String baseUrl}) {
    if (baseUrl == null) {
      return _instance._normal();
    } else {
      return _instance._baseUrl(baseUrl);
    }
  }

  HttpManager _normal() {
    if (_dio != null) {
      if (_dio.options.baseUrl != HttpApi.BASE_URL) {
        _dio.options.baseUrl = HttpApi.BASE_URL;
      }
    }
    return this;
  }

  HttpManager _baseUrl(String baseUrl) {
    if (_dio != null) {
      _dio.options.baseUrl = baseUrl;
    }
    return this;
  }

   ///通用的GET请求
  get(url, params, {noTip = false}) async {
    Response response;
    try {
      response = await _dio.get(url, queryParameters: params);
    } on DioError catch (e) {
      return resultError(e);
    }

    if (response.data is DioError) {
      return resultError(response.data['code']);
    }

    return response.data;
  }

  ///通用的POST请求
  post(url, params, {noTip = false}) async {
    Response response;

    try {
      response = await _dio.post(url, data: params);
    } on DioError catch (e) {
      return resultError(e);
    }

    if (response.data is DioError) {
      return resultError(response.data['code']);
    }

    return response.data;
  }
}



ResultData resultError(DioError e) {
  Response errorResponse;
  if (e.response != null) {
    errorResponse = e.response;
  } else {
    errorResponse = Response(statusCode: 666);
  }
  if (e.type == DioErrorType.CONNECT_TIMEOUT ||
      e.type == DioErrorType.RECEIVE_TIMEOUT) {
    errorResponse.statusCode = 1;
  }
  return ResultData(
      errorResponse.statusMessage, false, errorResponse.statusCode);
}

enum HttpMethod {
  GET,
  POST,
  PUT,
  DELETE,
  PATCH,
}
