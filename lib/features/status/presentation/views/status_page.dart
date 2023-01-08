import 'dart:math' as math;

import 'package:firebase_chat/core/core.dart';
import 'package:firebase_chat/features/status/presentation/views/status_view_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Status',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                    ),
              ),
              const AppTextBox(
                labelText: 'Search',
              ),
              const Gap(20),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                  ),
                  const Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('My Status'),
                      Text('Tap to add status update'),
                    ],
                  ),
                ],
              ),
              const Gap(20),
              const Text('Recent Updates'),
              const Gap(20),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                shrinkWrap: true,
                separatorBuilder: (BuildContext context, int index) =>
                    const Gap(20),
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            PageRouteBuilder<void>(
                              fullscreenDialog: true,
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      const StatusViewPage(),
                              transitionsBuilder: (
                                context,
                                animation,
                                secondaryAnimation,
                                child,
                              ) {
                                return ScaleTransition(
                                  scale: Tween<double>(
                                    begin: 0,
                                    end: 1,
                                  ).animate(animation),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: CustomPaint(
                                painter: WhatsAppStatusContainerPainter(
                                  length: 40,
                                ),
                              ),
                            ),
                            const Center(
                              child: CircleAvatar(
                                radius: 40,
                                child: Text('A'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Tommy'),
                          Text('1h ago'),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WhatsAppStatusContainerPainter extends CustomPainter {
  WhatsAppStatusContainerPainter({this.length = 1, this.radius = 40});
  final int length;
  final double radius;
  @override
  void paint(Canvas canvas, Size size) {
    final center = size / 2;
    final circlePaint = Paint();

    final increment = (360 / length).round();
    for (var i = 0; i <= 360; i += increment) {
      final arcPaint = Paint()
        ..style = PaintingStyle.stroke
        ..color = (i ~/ 2).isEven ? Colors.blue : Colors.grey
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 3;

      canvas.drawArc(
        Rect.fromCircle(center: size.center(Offset.zero), radius: radius + 5),
        (-90 + i) * math.pi / 180,
        (increment - 10) * math.pi / 180,
        false,
        arcPaint,
      );
    }
  }

  @override
  bool shouldRepaint(WhatsAppStatusContainerPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(WhatsAppStatusContainerPainter oldDelegate) =>
      false;
}
