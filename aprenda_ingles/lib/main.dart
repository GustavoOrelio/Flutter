import 'package:flutter/material.dart';

import 'telas/Home.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

          scaffoldBackgroundColor: Color(0xfff5e9b9),
      ),
    ));
