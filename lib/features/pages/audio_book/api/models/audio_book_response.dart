// class Movie {
//   List<Result> result =[];

//   Movie.fromJson(Map<String, dynamic> json) {
//     if (json['result'] != null) {
//       result = <Result>[];
//       json['result'].forEach((v) {
//         result.add(Result.fromJson(v));
//       });
//     }
//   }


//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['result'] = result.map((v) => v.toJson()).toList();
//     return data;
//   }
// }

// class Result {

//   List<String>? director;
//   List<String>? writers;
//   List<String>? stars;
//   List<String>? productionCompany;
//   String? title;
//   String? language;
//   int? runTime;
//   String? genre;
//   String? poster;
//   int? pageViews;
//   String? description;
//   int? totalVoted;
//   int? voting;

//   Result(
//       {
//       director,
//       writers,
//       stars,
//       productionCompany,
//       title,
//       language,
//       runTime,
//       genre,
//       poster,
//       pageViews,
//       description,
//       totalVoted,
//       voting});

//   Result.fromJson(Map<String, dynamic> json) {
//     director = json['director'].cast<String>();
//     writers = json['writers'].cast<String>();
//     stars = json['stars'].cast<String>();
//     productionCompany = json['productionCompany'].cast<String>();
//     title = json['title'];
//     language = json['language'];
//     runTime = json['runTime'];
//     genre = json['genre'];
  
//     poster = json['poster'];
//     pageViews = json['pageViews'];
//     description = json['description'];
//     totalVoted = json['totalVoted'];
//     voting = json['voting'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['director'] = director;
//     data['writers'] = writers;
//     data['stars'] = stars;
//     data['productionCompany'] = productionCompany;
//     data['title'] = title;
//     data['language'] = language;
//     data['runTime'] = runTime;
//     data['genre'] = genre;
   
//     data['poster'] = poster;
//     data['pageViews'] = pageViews;
//     data['description'] = description;
//     data['totalVoted'] = totalVoted;
//     data['voting'] = voting;
//     return data;
//   }
// }


// class QueryParam {
//   String? category;
//   String? language;
//   String? genre;
//   String? sort;

//   QueryParam({category, language, genre, sort});

//   QueryParam.fromJson(Map<String, dynamic> json) {
//     category = json['category'];
//     language = json['language'];
//     genre = json['genre'];
//     sort = json['sort'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['category'] = category;
//     data['language'] = language;
//     data['genre'] = genre;
//     data['sort'] = sort;
//     return data;
//   }
// }
