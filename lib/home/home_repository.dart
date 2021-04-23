import 'dart:convert';

import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/services.dart';

class HomeRepository {
  Future<UserModel> getUser() async {
    final reponse = await rootBundle.loadString("assets/database/user.json");
    final user = UserModel.fromJson(reponse);
    return user;
  }

  Future<List<QuizModel>> getQuizzes() async {
    final reponse = await rootBundle.loadString("assets/database/quizzes.json");
    final list = jsonDecode(reponse) as List;
    final quizzes = list.map((e) => QuizModel.fromMap(e)).toList();
    return quizzes;
  }
}
