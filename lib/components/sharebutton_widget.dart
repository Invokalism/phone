import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sharebutton_model.dart';
export 'sharebutton_model.dart';

class SharebuttonWidget extends StatefulWidget {
  const SharebuttonWidget({Key? key}) : super(key: key);

  @override
  _SharebuttonWidgetState createState() => _SharebuttonWidgetState();
}

class _SharebuttonWidgetState extends State<SharebuttonWidget> {
  late SharebuttonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SharebuttonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 303.0,
          height: 303.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            shape: BoxShape.circle,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24.0),
            child: Image.asset(
              'assets/images/367598771_2049815755410753_8216612338466410127_n.jpg',
              width: 300.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
