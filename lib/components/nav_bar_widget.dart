import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_bar_model.dart';
export 'nav_bar_model.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  late NavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarModel());

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

    return Align(
      alignment: AlignmentDirectional(0.0, 0.95),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.92,
        height: 60.0,
        decoration: BoxDecoration(
          color: Color(0x00B32121),
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Container(
          width: 100.0,
          height: 120.0,
          child: Stack(
            alignment: AlignmentDirectional(0.0, 0.050000000000000044),
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 100.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Color(0x8D000000),
                      borderRadius: BorderRadius.circular(60.0),
                      border: Border.all(
                        color: Color(0x00FFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.05, -0.05),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: FaIcon(
                        FontAwesomeIcons.bell,
                        color: Colors.white,
                        size: 28.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('NAV_BAR_COMP_bell_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed('newPost');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.video_call,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('NAV_BAR_COMP_video_call_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed('newVideo');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 40.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.text_snippet,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'NAV_BAR_COMP_text_snippet_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed('newsFromUnderwater');
                      },
                    ),
                    InkWell(
                      onTap: () async {
                        logFirebaseEvent('NAV_BAR_COMP_Column_a8a79492_ON_TAP');
                        logFirebaseEvent('Column_navigate_to');

                        context.pushNamed('newDive');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/news.png',
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: Icon(
                        Icons.event,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('NAV_BAR_COMP_event_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed('newEvent');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('NAV_BAR_COMP_person_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed('userList');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
