import 'package:dio/dio.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:yc/http/http_result_data.dart';

class ResponseInterceptors extends InterceptorsWrapper {
  @override
  onResponse(Response response) async {
    RequestOptions option = response.request;
    try {
      // if (option.contentType != null &&
      //     option.contentType.primaryType == "text") {
      //   return ResultData(response.data, true, Code.SUCCESS);
      // }

      ///一般只需要处理200的情况，300、400、500保留错误信息
      if (response.statusCode == 200 || response.statusCode == 201) {
        // int code = response.data["code"];
        // if (code == 0) {
          return ResultData(response.data, true, 0,
              headers: response.headers);
        // } else if (code == 100006 || code == 100007) {
        // } else {
        //   Fluttertoast.showToast(msg: response.data["msg"]);
        //   return ResultData(response.data, false, Code.SUCCESS,
        //       headers: response.headers);
        // }
      }
    } catch (e) {
      print(e.toString() + option.path);
      return ResultData(response.data, false, response.statusCode,
          headers: response.headers);
    }

    return ResultData(response.data, false, response.statusCode,
        headers: response.headers);
  }
}
