import 'package:flutter/material.dart';

class NotificationService {
  static GlobalKey<ScaffoldMessengerState> messengerKey =
      GlobalKey<ScaffoldMessengerState>();

  static message(String message) {
    messengerKey.currentState!.hideCurrentSnackBar();
    final snackBar = SnackBar(
      duration: Duration(milliseconds: 5000),
      content: Text(message),
    );
    messengerKey.currentState!.showSnackBar(snackBar);
  }

  static successMessage(String message) {
    messengerKey.currentState!.hideCurrentSnackBar();
    final snackBar = SnackBar(
      duration: Duration(milliseconds: 5000),
      backgroundColor: Colors.green,
      content: Text(message),
    );
    messengerKey.currentState!.showSnackBar(snackBar);
  }

  static infoMessage(String message) {
    messengerKey.currentState!.hideCurrentSnackBar();
    final snackBar = SnackBar(
      duration: Duration(milliseconds: 5000),
      backgroundColor: Colors.yellow,
      content: Text(
        message,
        style: TextStyle(color: Colors.black),
      ),
    );
    messengerKey.currentState!.showSnackBar(snackBar);
  }

  static errorMessage(String message) {
    messengerKey.currentState!.hideCurrentSnackBar();
    final snackBar = SnackBar(
      duration: Duration(milliseconds: 5000),
      backgroundColor: Colors.redAccent,
      content: Text(message),
    );
    messengerKey.currentState!.showSnackBar(snackBar);
  }

  static floatingMessage(String message) {
    messengerKey.currentState!.hideCurrentSnackBar();
    final snackBar = SnackBar(
      duration: Duration(milliseconds: 5000),
      content: Text(message),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(
        bottom: 80,
        right: 200,
        left: 200,
      ),
    );
    messengerKey.currentState!.showSnackBar(snackBar);
  }

  static floatingErrorMessage(String message) {
    messengerKey.currentState!.hideCurrentSnackBar();
    final snackBar = SnackBar(
      duration: Duration(milliseconds: 5000),
      backgroundColor: Colors.redAccent,
      content: Text(message),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(
        bottom: 80,
        right: 200,
        left: 200,
      ),
    );
    messengerKey.currentState!.showSnackBar(snackBar);
  }

  static floatingSuccessMessage(String message) {
    messengerKey.currentState!.hideCurrentSnackBar();
    final snackBar = SnackBar(
      duration: Duration(milliseconds: 5000),
      backgroundColor: Colors.green,
      content: Text(message),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(
        bottom: 80,
        right: 200,
        left: 200,
      ),
    );
    messengerKey.currentState!.showSnackBar(snackBar);
  }

  static floatingInfoMessage(String message) {
    messengerKey.currentState!.hideCurrentSnackBar();
    final snackBar = SnackBar(
      duration: Duration(milliseconds: 5000),
      backgroundColor: Colors.yellow,
      content: Text(
        message,
        style: TextStyle(color: Colors.black),
      ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(
        bottom: 80,
        right: 200,
        left: 200,
      ),
    );
    messengerKey.currentState!.showSnackBar(snackBar);
  }

  static hideSnackbar() => messengerKey.currentState!.hideCurrentSnackBar();
}
