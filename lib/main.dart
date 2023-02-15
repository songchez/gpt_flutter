import 'dart:html';

import 'package:flutter/material.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:sitesurface_flutter_openai/sitesurface_flutter_openai.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GPT테스트',
      theme: ThemeData(primarySwatch: Colors.amber, useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  dynamic resultText; //다이나믹. 타입을 미리지정하고싶지 않을때.
  dynamic _openAiClient;
  final _textEditingController = TextEditingController();
  final _scrollController = ScrollController();
  final _completionRequest =
      CreateCompletionRequest(model: "text-davinci-003", maxTokens: 2048);

  @override
  void initState() {
    String apiKey = dotenv.env['FLUTTER_OPEN_AI_API_KEY']!;
    String organizationId = dotenv.env['FLUTTER_OPEN_AI_ORGANIZATION_ID']!;

    _openAiClient = OpenAIClient(
        OpenAIConfig(apiKey: apiKey, organizationId: organizationId));

    resultText = '없어';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ChatGPT")),
      body: ChatGPTBuilder(
        completionRequest: _completionRequest,
        openAIClient: _openAiClient,
        builder: (context, messages, onSend) {
          return Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.separated(
                    itemCount: messages.length,
                    controller: _scrollController,
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 5,
                        ),
                    itemBuilder: (context, index) {
                      var isSender = !messages[index].fromChatGPT;
                      return BubbleSpecialThree(
                        isSender: isSender,
                        text: messages[index].message,
                        color:
                            isSender ? const Color(0xFF1B97F3) : Colors.white,
                        tail: true,
                        textStyle: TextStyle(
                            color: isSender ? Colors.white : Colors.grey[800],
                            fontSize: 16),
                      );
                    }),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: _textEditingController,
                        decoration: InputDecoration(
                            hintText: "Message",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ),
                  FloatingActionButton(
                      onPressed: () {
                        if (_textEditingController.text.trim().isEmpty) return;
                        onSend(_textEditingController.text).whenComplete(() {
                          _scrollController.jumpTo(
                              _scrollController.position.maxScrollExtent);
                        });
                        FocusScope.of(context).unfocus();
                        _textEditingController.clear();
                      },
                      child: const Icon(Icons.send)),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
