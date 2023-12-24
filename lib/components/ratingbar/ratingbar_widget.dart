import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ratingbar_model.dart';
export 'ratingbar_model.dart';

class RatingbarWidget extends StatefulWidget {
  const RatingbarWidget({
    Key? key,
    this.parameter1,
  }) : super(key: key);

  final double? parameter1;

  @override
  _RatingbarWidgetState createState() => _RatingbarWidgetState();
}

class _RatingbarWidgetState extends State<RatingbarWidget> {
  late RatingbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RatingbarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return RatingBar.builder(
      onRatingUpdate: (newValue) =>
          setState(() => _model.ratingBarValue = newValue),
      itemBuilder: (context, index) => Icon(
        Icons.star_rounded,
        color: Color(0xFF39D2C0),
      ),
      direction: Axis.horizontal,
      initialRating: _model.ratingBarValue ??= widget.parameter1!,
      unratedColor: Color(0xFFE0E3E7),
      itemCount: 5,
      itemSize: 20.0,
      glowColor: Color(0xFF39D2C0),
    );
  }
}
