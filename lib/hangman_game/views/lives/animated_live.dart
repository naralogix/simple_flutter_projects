import 'package:flutter/material.dart';

class AnimatedLive extends StatefulWidget {
  const AnimatedLive({Key? key}) : super(key: key);

  @override
  _AnimatedLiveState createState() => _AnimatedLiveState();
}

class _AnimatedLiveState extends State<AnimatedLive>
    with TickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Color?> _animation;
  late final Animation<double> _scaleAnimation;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    final ColorTween _colorTween =
        ColorTween(begin: Colors.red[900], end: Colors.grey);
    final _scaleTween = Tween<double>(begin: 1.02, end: 1.0);
    _animation = _colorTween.animate(_animationController);
    _scaleAnimation = _scaleTween.animate(
        CurvedAnimation(parent: _animationController, curve: Curves.ease));
    _animationController.forward();

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Icon(
            Icons.favorite,
            size: _scaleAnimation.value * 36.0,
            color: _animation.value,
          );
        });
  }
}
