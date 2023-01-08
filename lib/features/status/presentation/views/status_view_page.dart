import 'dart:math';

import 'package:flutter/material.dart';

class StatusViewPage extends StatelessWidget {
  const StatusViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: PageView.builder(
              itemBuilder: (context, index) {
                return Container(
                  color: Color.fromRGBO(
                    Random().nextInt(255),
                    Random().nextInt(255),
                    Random().nextInt(255),
                    1,
                  ),
                  child: Center(
                    child: Text(
                      'Page ${index + 1}',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: CircleAvatar(
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
