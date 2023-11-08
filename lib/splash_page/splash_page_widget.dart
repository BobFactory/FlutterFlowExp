import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'splash_page_model.dart';
export 'splash_page_model.dart';

class SplashPageWidget extends StatefulWidget {
  const SplashPageWidget({Key? key}) : super(key: key);

  @override
  _SplashPageWidgetState createState() => _SplashPageWidgetState();
}

class _SplashPageWidgetState extends State<SplashPageWidget> {
  late SplashPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.checkAndNavigate(
        context,
      );
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F4F8),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Text(
                      'playground.demo',
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Inter',
                                color: Color(0xFF14181B),
                                fontSize: 32.0,
                                fontWeight: FontWeight.normal,
                              ),
                    ),
                  ),
                ),
                Text(
                  'Created as an expiment by a yound and talented scientist.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
