import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answeer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final _getYesNoAnswer = GetYesNoAnswer();
  List<Message> messages = [
    Message(text: 'Hola amor!', fromWho: FromWho.sender),
    Message(text: 'Hola mi amor, como estas?', fromWho: FromWho.sender),
    Message(text: 'Hola mi amor, como estas?', fromWho: FromWho.sender),
    Message(text: 'Hola mi amor, como estas?', fromWho: FromWho.receiver),
  ];

  final ScrollController scrollController = ScrollController();

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    messages.add(Message(text: text, fromWho: FromWho.sender));
    getAnswer(text);
    notifyListeners();
    scrollToButtom();
  }

  Future<void> getAnswer(String message) async {
    if (message.endsWith('?')) {
      final responseMessage = await _getYesNoAnswer.getAnswer();
      messages.add(responseMessage);
    }
    notifyListeners();
    scrollToButtom();
  }

  void scrollToButtom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }
}
