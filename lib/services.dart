import 'dart:convert';

import 'package:http/http.dart'as http;
Future<String> chatbot(String Usertext) async {
  final Response = await http.post(
    Uri.parse(
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=AIzaSyArF7Dqq5a92P7xURVCz7RJ6zF81GMEhuw",
    ), headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "contents": [
          {
            "parts": [
              {"text": Usertext}
            ]
          }
        ]
      }));
  if (Response.statusCode == 200) {
    final json = jsonDecode(Response.body);
    return json['candidates'][0]["content"]["parts"][0]["text"];
  } else {
    return "something went wrong ";
  }
}
  

