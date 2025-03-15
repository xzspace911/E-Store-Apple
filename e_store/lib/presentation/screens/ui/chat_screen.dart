import 'package:e_store/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ai Model",
          style: TextStyle(
            fontFamily: XStrings.mainFontFamily,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: LlmChatView(
        provider: GeminiProvider(
          model: GenerativeModel(
            model: 'gemini-1.5-flash',
            apiKey: 'GEMINI-API-KEY',
          ),
        ),
      ),
    );
  }
}
