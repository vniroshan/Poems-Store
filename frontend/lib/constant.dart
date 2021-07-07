// Strings
import 'package:flutter/material.dart';

const baseURL = 'http://localhost:8000/api';
const loginURL = baseURL + '/login';
const registerURL = baseURL + '/register';
const logoutURL = baseURL + '/logout';
const userURL = baseURL + '/user';
const postsURL = baseURL + '/posts';
const commentURL = baseURL + '/comments';

//Errors
const serverError = 'Server error';
const unauthorized = 'unauthorized';
const somethingWentWrong = 'Somthing went wrong, try again!';

// input decoration
InputDecoration kInputDecoration(String label) {
  return InputDecoration(
      labelText: label,
      contentPadding: EdgeInsets.all(10),
      border: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.black)));
}
