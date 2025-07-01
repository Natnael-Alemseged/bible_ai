// import 'package:africkiko/app/app.locator.dart';
// import 'package:africkiko/services/providers/user_service.dart';
import 'package:bible_ai/app/app.locator.dart';
import 'package:bible_ai/services/user_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:mime/mime.dart';
import 'package:http_parser/http_parser.dart'; // For MediaType

// import '../user_service.dart';

statusCodeSuccess(num? statusCode) {
  // status code success checker
  if (statusCode == null) return false;
  return statusCode >= 200 && statusCode <= 201;
}

// statusCodeServerFaliure(num? statusCode){  // status code success checker
//   if (statusCode == null) return false;
//   return statusCode >= 500 && statusCode <= 599;
// }

class ApiService {
  final UserService userService = locator<UserService>();

  static final _dio = Dio();
  static const _timeOut = Duration(seconds: 60);

  static Map<String, dynamic> _responseObj(message) => {"data": message};

  static Response _responseGenerator(int statusCode, var data) => Response(
        statusCode: statusCode,
        data: data,
        requestOptions: RequestOptions(),
      );

  // connection problem response.
  static const int _errorStatusCode = 500;

  // common methods
  // static _intercepter() {
  //   return InterceptorsWrapper(
  //     onRequest: (options, handler) async {
  //       // Add a custom header to the request
  //       options.headers['Authorization'] = 'Bearer ${_getToken()}';
  //       options.headers['content-type'] = 'application/json';
  //       options.headers['Accept'] = 'application/json';
  //       return handler.next(options);
  //     },
  //   );
  // }
  static _intercepter() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        options.headers['Authorization'] = 'Bearer ${_getToken()}';
        // print( await _getToken());
        // Only set content-type if it hasn't been specified already.
        if (!options.headers.containsKey('Content-Type') &&
            !options.headers.containsKey('content-type')) {
          options.headers['Content-Type'] = 'application/json';
        }
        options.headers['Accept'] = 'application/json';
        return handler.next(options);
      },
    );
  }

  // get token
  static _getToken() => UserService.token;

  // exception handler
  static _exceptionHandler(var error) {
    if (error is DioException) {
      String errorMessage = '';
      switch (error.type) {
        case DioExceptionType.connectionError:
          return _responseGenerator(500, _responseObj('Connection Error'));
        case DioExceptionType.connectionTimeout:
          return _responseGenerator(
            _errorStatusCode,
            _responseObj('Connection timeout!'),
          );
        case DioExceptionType.receiveTimeout:
          return _responseGenerator(
            _errorStatusCode,
            _responseObj('Connection timeout!'),
          );
        case DioExceptionType.sendTimeout:
          return _responseGenerator(
            _errorStatusCode,
            _responseObj('Connection timeout!'),
          );
        case DioExceptionType.badResponse:
          if (error.response != null) {
            // Extract status code and any error message from response body (if applicable)
            try {
              errorMessage =
                  '${error.response?.data['message'] ?? 'Something went wrong'}';
              return _responseGenerator(
                error.response?.statusCode ?? 500,
                _responseObj(errorMessage),
              );
            } catch (e) {
              errorMessage = 'Something went wrong';
              return _responseGenerator(
                error.response?.statusCode ?? 500,
                'Something went wrong',
              );
            }
          } else {
            // If response is null, it likely indicates a network-level issue
            errorMessage = 'Connection Error';
            return _responseGenerator(500, _responseObj(errorMessage));
          }

        default:
          errorMessage = 'Something went wrong';
          return _responseGenerator(500, _responseObj(errorMessage));
      }
    }
    return _responseGenerator(500, _responseObj('Something went wrong'));
  }

  // post call
  static Future<Response> postCall({
    required String url,
    required body,
    required bool tokenNeeded,
  }) async {
    try {
      tokenNeeded ? _dio.interceptors.add(_intercepter()) : null;
      Response response = await _dio.post(url, data: body).timeout(
            _timeOut,
            onTimeout: () => _responseGenerator(
              _errorStatusCode,
              _responseObj('Connection timeout!'),
            ),
          );
      return _responseGenerator(response.statusCode ?? 201, response.data);
    } catch (e) {
      if (e is DioException) {
        print('exception is ()()()()');
        print(e);
        if (e.response?.statusCode == 401) {
          UserService().clearUserData(tokenIssue: true);
        }
      }

      return _exceptionHandler(e);
    }
  }

  // get call
  static Future<Response> getCall({
    required String url,
    required bool tokenNeeded,
  }) async {
    try {
      tokenNeeded ? _dio.interceptors.add(_intercepter()) : null;
      Response response = await _dio.get(url).timeout(
            _timeOut,
            onTimeout: () => _responseGenerator(
              _errorStatusCode,
              _responseObj('Connection timeout!'),
            ),
          );

      return _responseGenerator(response.statusCode ?? 201, response.data);
    } catch (e) {
      if (e is DioException) {
        print('exception is ()()()()');
        print(e);
        if (e.response?.statusCode == 401) {
          UserService().clearUserData(tokenIssue: true);
        }
      }

      return _exceptionHandler(e);
    }
  }

  static Future<Response> patchCall({
    required String url,
    var body,
    required bool tokenNeeded,
  }) async {
    print(_getToken());
    try {
      tokenNeeded ? _dio.interceptors.add(_intercepter()) : null;
      late Response response;
      if (body == null) {
        response = await _dio.patch(url);
      } else {
        response = await _dio.patch(url, data: body);
      }

      return response;
    } catch (e) {
      return _exceptionHandler(e);
    }
  }

  // update/path call
  static Future<Response> pathCall({
    required String url,
    required var body,
    required bool tokenNeeded,
  }) async {
    try {
      tokenNeeded ? _dio.interceptors.add(_intercepter()) : null;
      Response response = await _dio.patch(url, data: body);
      return response;
    } catch (e) {
      return _exceptionHandler(e);
    }
  }

  // delete call
  static Future<Response> deleteCall({
    required String url,
    var body,
    required bool tokenNeeded,
  }) async {
    try {
      tokenNeeded ? _dio.interceptors.add(_intercepter()) : null;
      Response response = await _dio.delete(url, data: body);
      return response;
    } catch (e) {
      return _exceptionHandler(e);
    }
  }

  // upload files call
  static Future<Response> uploadFiles({
    required String url,
    required List<String> filePaths, // List of file paths to upload
    required bool tokenNeeded,
  }) async {
    try {
      tokenNeeded ? _dio.interceptors.add(_intercepter()) : null;

      // Create a list of MultipartFile objects
      List<MultipartFile> multipartFiles = [];

      for (var filePath in filePaths) {
        final mimeType = lookupMimeType(
          filePath,
        ); // Get the MIME type (e.g., "image/jpeg")
        if (mimeType != null) {
          final mimeSplit = mimeType.split(
            '/',
          ); // Split MIME type into ["image", "jpeg"]
          multipartFiles.add(
            await MultipartFile.fromFile(
              filePath,
              filename: filePath.split('/').last,
              contentType: MediaType(
                mimeSplit[0],
                mimeSplit[1],
              ), // Set MIME type
            ),
          );
        } else {
          debugPrint('Unknown MIME type for file: $filePath');
        }
      }
      // Construct the FormData
      FormData formData = FormData.fromMap({
        'files': multipartFiles, // "files" is the required key for your API
      });

      debugPrint("form data is:");
      debugPrint(formData.fields.toString());
      debugPrint(formData.files.toString());

      // Send the POST request
      Response response = await _dio
          .post(
            url,
            data: formData,
            options: Options(headers: {"Content-Type": "multipart/form-data"}),
          )
          .timeout(
            _timeOut,
            onTimeout: () => _responseGenerator(
              _errorStatusCode,
              _responseObj('Connection timeout!'),
            ),
          );

      return _responseGenerator(response.statusCode ?? 201, response.data);
    } catch (e) {
      return _exceptionHandler(e);
    }
  }

  static Future<Response> uploadFile({
    required String url,
    required String filePath,
    required bool tokenNeeded,
  }) async {
    try {
      final mimeType =
          lookupMimeType(filePath) ?? _getMimeTypeFromExtension(filePath);
      if (mimeType == null) {
        debugPrint('Unknown MIME type for file: $filePath');
        throw Exception('Unknown MIME type');
      }

      final mimeSplit = mimeType.split('/');
      MultipartFile multipartFile = await MultipartFile.fromFile(
        filePath,
        filename: filePath.split('/').last,
        contentType: MediaType(mimeSplit[0], mimeSplit[1]),
      );

      FormData formData = FormData.fromMap({'files': multipartFile});

      debugPrint("FormData fields: ${formData.fields}");
      debugPrint("FormData files: ${formData.files}");

      // Build options without adding the interceptor.
      final options = Options(
        headers: {
          "Content-Type": "multipart/form-data",
          if (tokenNeeded) "Authorization": "Bearer ${_getToken()}",
        },
      );

      Response response =
          await _dio.post(url, data: formData, options: options).timeout(
        const Duration(minutes: 5),
        onTimeout: () {
          debugPrint('Upload timeout for: $filePath');
          return _responseGenerator(
            _errorStatusCode,
            _responseObj('Connection timeout!'),
          );
        },
      );

      debugPrint(
        'Upload successful for: $filePath, status: ${response.statusCode}',
      );
      return _responseGenerator(response.statusCode ?? 201, response.data);
    } on DioException catch (dioError) {
      debugPrint('Dio upload error for: $filePath, error: ${dioError.message}');
      return _exceptionHandler(dioError);
    } catch (e) {
      debugPrint('General upload error for: $filePath, error: $e');
      return _exceptionHandler(e);
    }
  }

  static String? _getMimeTypeFromExtension(String filePath) {
    final extension = filePath.split('.').last.toLowerCase();
    // Remove duplicate mp3 case
    return switch (extension) {
      'jpg' || 'jpeg' => 'image/jpeg',
      'png' => 'image/png',
      'gif' => 'image/gif',
      'mp3' => 'audio/mpeg', // Only keep this MP3 case
      'wav' => 'audio/wav',
      'aac' => 'audio/aac',
      _ => null,
    };
  }

  // Future<String?> uploadToFirebase({
  //   required String filePath,
  //   required String destinationPath,
  //   String? fileName,
  // }) async {
  //   try {
  //     // Get a reference to Firebase Storage
  //     final Reference storageRef = FirebaseStorage.instance.ref();
  //
  //     // Create a reference to the file location in Firebase
  //     // final String fileExtension = path.extension(filePath);
  //     final String uploadFileName = fileName ?? '${DateTime.now().millisecondsSinceEpoch}$fileExtension';
  //     final Reference fileRef = storageRef.child('$destinationPath/$uploadFileName');
  //
  //     // Upload the file
  //     final UploadTask uploadTask = fileRef.putFile(File(filePath));
  //
  //     // Wait for the upload to complete
  //     final TaskSnapshot snapshot = await uploadTask.whenComplete(() {});
  //
  //     // Get the download URL
  //     final String downloadUrl = await snapshot.ref.getDownloadURL();
  //
  //     return downloadUrl;
  //   } catch (e) {
  //     print('Error uploading to Firebase: $e');
  //     return null;
  //   }
  // }
}
