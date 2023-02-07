import 'package:flutter/material.dart';
import 'graphdata.dart';

class ShowGraph extends StatefulWidget {
  @override
  _ShowGraphState createState() => _ShowGraphState();
}

class _ShowGraphState extends State<ShowGraph>
    with SingleTickerProviderStateMixin<ShowGraph> {
  late AnimationController _graphAnimationController;

  @override
  void initState() {
    super.initState();
    _graphAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
  }

  @override
  void dispose() {
    _graphAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: InkWell(
            onTap: () {
              _graphAnimationController.forward();
            },
            child: Graph(
                animationController: _graphAnimationController,
                values: dayData),
          ),
        ),
      ),
    );
  }
}

class Graph extends StatelessWidget {
  final double height;
  final List<GraphData> values;
  final AnimationController animationController;

  Graph(
      {required this.animationController,
      this.height = 120,
      required this.values});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _buildBars(values),
      ),
    );
  }

  _buildBars(List<GraphData> values) {
    List<GraphBar> _bars = [];
    GraphData _maxGraphData = values.reduce(
        (current, next) => (next.compareTo(current) >= 1) ? next : current);
    values.forEach((graphData) {
      double percentage = graphData.value / _maxGraphData.value;
      _bars.add(GraphBar(height, percentage, animationController));
    });

    return _bars;
  }
}

class GraphBar extends StatefulWidget {
  final double height, percentage;
  final AnimationController _graphBarAnimationController;

  GraphBar(this.height, this.percentage, this._graphBarAnimationController);

  @override
  _GraphBarState createState() => _GraphBarState();
}

class _GraphBarState extends State<GraphBar> {
  late Animation<double> _percentageAnimation;

  @override
  void initState() {
    super.initState();
    _percentageAnimation = Tween<double>(begin: 0, end: widget.percentage)
        .animate(widget._graphBarAnimationController);
    _percentageAnimation.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BarPainter(_percentageAnimation.value),
      child: Container(
        height: widget.height,
      ),
    );
  }
}

class BarPainter extends CustomPainter {
  final double percentage;

  BarPainter(this.percentage);

  @override
  void paint(Canvas canvas, Size size) {
    Paint greyPaint = Paint()
      ..color = Colors.grey
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    Offset topPoint = Offset(0, 0);
    Offset bottomPoint = Offset(0, (size.height + 20));
    Offset centerPoint = Offset(0, (size.height + 20) / 2);

    canvas.drawLine(topPoint, bottomPoint, greyPaint);

    Paint filledPaint = Paint()
      ..shader = LinearGradient(
              colors: [Colors.purple.shade400, Colors.blue.shade600],
              begin: Alignment.topCenter)
          .createShader(Rect.fromPoints(topPoint, bottomPoint))
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    double filledHeight = percentage * size.height;
    double filledHalfHeight = filledHeight / 2;

    canvas.drawLine(
        centerPoint, Offset(0, centerPoint.dy - filledHalfHeight), filledPaint);
    canvas.drawLine(
        centerPoint, Offset(0, centerPoint.dy + filledHalfHeight), filledPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
