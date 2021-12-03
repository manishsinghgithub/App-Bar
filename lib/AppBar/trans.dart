import 'dart:ffi';

import 'package:flutter/material.dart';

class TransAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('trans'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Image.network(
        'https://i.pinimg.com/736x/72/8f/21/728f2132bf7c6e2c5aba7cbd1a89c1b4.jpg',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
