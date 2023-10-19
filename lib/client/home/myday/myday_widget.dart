import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';
import 'myday_model.dart';
export 'myday_model.dart';

class MydayWidget extends StatefulWidget {
  const MydayWidget({Key? key}) : super(key: key);

  @override
  _MydayWidgetState createState() => _MydayWidgetState();
}

class _MydayWidgetState extends State<MydayWidget> {
  late MydayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MydayModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/modules_(3).png',
              width: 429.0,
              height: 843.0,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(-1.00, 0.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.arrow_back,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('home');
                    },
                  ),
                ),
              ),
              Expanded(
                child: FlutterFlowSwipeableStack(
                  topCardHeightFraction: 0.79,
                  middleCardHeightFraction: 0.68,
                  bottomCardHeightFraction: 0.75,
                  topCardWidthFraction: 0.9,
                  middleCardWidthFraction: 0.85,
                  bottomCardWidthFraction: 0.8,
                  onSwipeFn: (index) {},
                  onLeftSwipe: (index) {},
                  onRightSwipe: (index) {},
                  onUpSwipe: (index) {},
                  onDownSwipe: (index) {},
                  itemBuilder: (context, index) {
                    return [
                      () => ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Untitled_design.png',
                              width: 300.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                      () => ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Untitled_design_(1).png',
                              width: 300.0,
                              height: 200.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                      () => ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Untitled_design_(2).png',
                              width: 300.0,
                              height: 200.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                    ][index]();
                  },
                  itemCount: 3,
                  controller: _model.swipeableStackController,
                  enableSwipeUp: false,
                  enableSwipeDown: false,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
