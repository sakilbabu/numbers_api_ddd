import 'dart:convert';
import 'package:number_api_ddd/domain/entities/submit_state.dart';

class SubmitStateModel extends SubmitState {
  SubmitStateModel({String? text, num? number, bool? found, String? type})
      : super();

  factory SubmitStateModel.fromJson(String str) =>
      SubmitStateModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SubmitStateModel.fromMap(Map<String, dynamic> json) =>
      SubmitStateModel(
        text: json["text"],
        number: json["number"],
        found: json["found"],
        type: json["type"],
      );

  Map<String, dynamic> toMap() => {
        "text": text,
        "number": number,
        "found": found,
        "type": type,
      };
}
