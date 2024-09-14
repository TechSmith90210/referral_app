import 'package:flutter/material.dart';

class FadeInText extends StatefulWidget {
  final String text; // Customizable text
  final TextStyle? style; // Optional text style
  final Duration duration; // Duration of the animation

  const FadeInText({
    Key? key,
    required this.text,
    this.style,
    this.duration = const Duration(seconds: 2),
  }) : super(key: key);

  @override
  _FadeInTextState createState() => _FadeInTextState();
}

class _FadeInTextState extends State<FadeInText> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _controller.repeat(reverse: true); // Loop the animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Text(
        widget.text,
        style: widget.style ??
            const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w800,
            ),
      ),
    );
  }
}
