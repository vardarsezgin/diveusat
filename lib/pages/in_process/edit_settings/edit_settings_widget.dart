import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_settings_model.dart';
export 'edit_settings_model.dart';

class EditSettingsWidget extends StatefulWidget {
  const EditSettingsWidget({Key? key}) : super(key: key);

  @override
  _EditSettingsWidgetState createState() => _EditSettingsWidgetState();
}

class _EditSettingsWidgetState extends State<EditSettingsWidget>
    with TickerProviderStateMixin {
  late EditSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditSettingsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'editSettings'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF14181B),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 1.0,
          decoration: BoxDecoration(
            color: Color(0xFF14181B),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/GOPR0549.jpg',
              ).image,
            ),
          ),
          child: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xCD00072B), Color(0xBF000000)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.white,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'EDIT_SETTINGS_arrow_back_rounded_ICN_ON_');
                              logFirebaseEvent('IconButton_navigate_to');

                              context.pushNamed('settings');
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Geri',
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: DefaultTabController(
                      length: 1,
                      initialIndex: 0,
                      child: Column(
                        children: [
                          TabBar(
                            isScrollable: true,
                            labelColor: Colors.white,
                            labelStyle:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                    ),
                            indicatorColor: Colors.white,
                            tabs: [
                              Tab(
                                text: 'Ayarları Düzenle',
                              ),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Choose what notifcations you want to recieve below and we will update the settings.',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color: Colors.white,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: SwitchListTile.adaptive(
                                          value: _model.switchListTileValue1 ??=
                                              true,
                                          onChanged: (newValue) async {
                                            setState(() =>
                                                _model.switchListTileValue1 =
                                                    newValue!);
                                          },
                                          title: Text(
                                            'Push Notifications',
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          subtitle: Text(
                                            'Receive Push notifications from our application on a semi regular basis.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: Colors.white,
                                                ),
                                          ),
                                          tileColor: Colors.white,
                                          activeColor: Color(0xECFFFFFF),
                                          activeTrackColor: Colors.white,
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 12.0, 24.0, 12.0),
                                        ),
                                      ),
                                      SwitchListTile.adaptive(
                                        value: _model.switchListTileValue2 ??=
                                            true,
                                        onChanged: (newValue) async {
                                          setState(() =>
                                              _model.switchListTileValue2 =
                                                  newValue!);
                                        },
                                        title: Text(
                                          'Email Notifications',
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                                fontFamily: 'Roboto Condensed',
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        subtitle: Text(
                                          'Receive email notifications from our marketing team about new features.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Roboto Condensed',
                                                color: Colors.white,
                                              ),
                                        ),
                                        activeColor: Color(0xFF4B39EF),
                                        activeTrackColor: Color(0xFF3B2DB6),
                                        dense: false,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                24.0, 12.0, 24.0, 12.0),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 24.0, 0.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'EDIT_SETTINGS_PAGE_Button-Login_ON_TAP');
                                            logFirebaseEvent(
                                                'Button-Login_wait__delay');
                                            await Future.delayed(const Duration(
                                                milliseconds: 100));
                                            logFirebaseEvent(
                                                'Button-Login_navigate_to');

                                            context.pushNamed('settings');
                                          },
                                          text: 'Değişiklikleri Kaydet',
                                          options: FFButtonOptions(
                                            width: 190.0,
                                            height: 50.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFF000848),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily:
                                                          'Roboto Condensed',
                                                      color: Colors.white,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                        ),
                                      ),
                                      Divider(
                                        height: 44.0,
                                        thickness: 1.0,
                                        indent: 24.0,
                                        endIndent: 24.0,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 16.0, 0.0),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'EDIT_SETTINGS_Container_3hb6d3k7_ON_TAP');
                                            logFirebaseEvent('Container_auth');
                                            await deleteUser(context);
                                            logFirebaseEvent(
                                                'Container_navigate_to');

                                            context.pushNamed('firstpage');
                                          },
                                          child: Container(
                                            width: 150.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF000848),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              border: Border.all(
                                                color: Color(0xFF000848),
                                                width: 0.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      8.0, 12.0, 8.0, 12.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Icon(
                                                      Icons
                                                          .account_circle_outlined,
                                                      color: Colors.white,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Hesabımı Sil',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyText2
                                                          .override(
                                                            fontFamily:
                                                                'Roboto Condensed',
                                                            color: Colors.white,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
