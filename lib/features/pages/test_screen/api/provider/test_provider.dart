// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:zeba_academy_education_app/features/pages/audio_book/api/utils/internet_connection.dart';




// class MovieProvider extends ChangeNotifier {
// //  ---------------------------Api calling Method Function---------------------------

//   bool _error = false;
//   Movie? movieResponse;
//   String _errorMessage = '';

//   bool get error => _error;
//   Movie? get movieResponseModel => movieResponse;
//   String get errorMessage => _errorMessage;
//   bool get ifLoading => movieResponse == null && error == false;

//   List<Result> movies = [];
//   Future<void> fetchMovies() async {
//     if (!await Connection.isConnected()) {
//       return;
//     }

//     String uri =
//         "https://hoblist.com/api/movieList";
//     Dio dio = Dio();
//     Response response = await dio.post(
//       uri,
//       data:  {
//         'category': 'movies',
//         'language': 'kannada',
//         'genre': 'all',
//         'sort': 'voting',
//       },
//       options: Options(contentType: Headers.formUrlEncodedContentType),
//     );
//     // log(response.data.toString());
//     // log('response data fetched ');
//     if (response.statusCode == 200) {
//       try {
//         if (response.statusCode == HttpStatus.ok) {
//           movieResponse = Movie.fromJson(response.data);
//           if (movieResponse != null) { 
//             movies = movieResponse!.result;
//           }
//         }
//       } on DioException catch (e) {
//         _error = true;
//         _errorMessage = e.toString();
//         movieResponse = null;
//         log("Sample init Api  is Fail $e");
//       }
//     } else {
//       _errorMessage = response.statusCode.toString();
//       movieResponse = null;
//       _error = true;
//       log('Error');
//     }
//     notifyListeners();
//   }
// }
