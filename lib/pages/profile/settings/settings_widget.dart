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
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'settings_model.dart';
export 'settings_model.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget>
    with TickerProviderStateMixin {
  late SettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'settings'});
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
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
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
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 1.0,
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
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
                                      'SETTINGS_arrow_back_rounded_ICN_ON_TAP');
                                  logFirebaseEvent('IconButton_navigate_to');

                                  context.pushNamed('home');
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Geri',
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
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
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.width * 0.25,
                              decoration: BoxDecoration(
                                color: Color(0xFFDBE2E7),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    2.0, 2.0, 2.0, 2.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 90.0,
                                    height: 90.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        valueOrDefault(
                                            currentUserDocument?.userImage, ''),
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/deneme-t2bsqd/assets/kohz3xzsugu4/cute-diver-ocean-cartoon-vector-icon-illustration-science-nature-icon-concept-isolated-premium_138676-5610.jpg',
                                      ),
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0x00283636),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    valueOrDefault<String>(
                                      valueOrDefault(
                                          currentUserDocument?.username, ''),
                                      'Kullanıcı Adı',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Roboto Condensed',
                                          color: Color(0xECFFFFFF),
                                        ),
                                  ),
                                ),
                                if (currentUserEmailVerified)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 0.0, 0.0, 0.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => Icon(
                                        Icons.verified,
                                        color: Color(0xECFFFFFF),
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 6.0, 0.0, 0.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => Text(
                                  valueOrDefault(
                                      currentUserDocument?.userRole, ''),
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Roboto Condensed',
                                        color: Color(0xECFFFFFF),
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 6.0, 0.0, 0.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => Text(
                                  valueOrDefault(
                                      currentUserDocument?.userBio, ''),
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Roboto Condensed',
                                        color: Color(0xECFFFFFF),
                                      ),
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
                          ],
                        ),
                      ),
                      if (currentUserEmailVerified == false)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 30.0, 16.0, 0.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => InkWell(
                              onTap: () async {
                                logFirebaseEvent(
                                    'SETTINGS_PAGE_Container_4fo8s9ww_ON_TAP');
                                logFirebaseEvent('Container_navigate_to');
                                if (Navigator.of(context).canPop()) {
                                  context.pop();
                                }
                                context.pushNamed('verifyAccount');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF8BB5FF),
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: Color(0xFF8BB5FF),
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 12.0, 8.0, 12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 0.0, 0.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.solidBell,
                                          color: Color(0xECFFFFFF),
                                          size: 24.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'E-posta adresini doğrula',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Roboto Condensed',
                                                color: Color(0xECFFFFFF),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 0.0),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent(
                                'SETTINGS_PAGE_Container_240y98uy_ON_TAP');
                            logFirebaseEvent('Container_navigate_to');
                            if (Navigator.of(context).canPop()) {
                              context.pop();
                            }
                            context.pushNamed('changePassword');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF000848),
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: Color(0xFF000848),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 12.0, 8.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.vpn_key,
                                      color: Color(0xECFFFFFF),
                                      size: 24.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Şifreyi Değiştir',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Roboto Condensed',
                                            color: Color(0xECFFFFFF),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 0.0),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent(
                                'SETTINGS_PAGE_Container_lcq5yymp_ON_TAP');
                            logFirebaseEvent('Container_navigate_to');
                            if (Navigator.of(context).canPop()) {
                              context.pop();
                            }
                            context.pushNamed('editProfile');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF000848),
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: Color(0xFF000848),
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 12.0, 8.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.account_circle_outlined,
                                      color: Color(0xECFFFFFF),
                                      size: 24.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Profili Düzenle',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Roboto Condensed',
                                            color: Color(0xECFFFFFF),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      if (valueOrDefault(currentUserDocument?.userRole, '') ==
                          'admin')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 16.0, 0.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => InkWell(
                              onTap: () async {
                                logFirebaseEvent(
                                    'SETTINGS_PAGE_Container_nfexj4c8_ON_TAP');
                                logFirebaseEvent('Container_navigate_to');
                                if (Navigator.of(context).canPop()) {
                                  context.pop();
                                }
                                context.pushNamed('editSettings');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF000848),
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: Color(0xFF000848),
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 12.0, 8.0, 12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.settings_outlined,
                                          color: Color(0xECFFFFFF),
                                          size: 24.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Ayarlar',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Roboto Condensed',
                                                color: Color(0xECFFFFFF),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'SETTINGS_PAGE_ÇIKIŞ_YAP_BTN_ON_TAP');
                            logFirebaseEvent('Button_auth');
                            GoRouter.of(context).prepareAuthEvent();
                            await signOut();
                            GoRouter.of(context).clearRedirectLocation();

                            context.goNamedAuth('firstpage', mounted);
                          },
                          text: 'Çıkış Yap',
                          options: FFButtonOptions(
                            width: 150.0,
                            height: 44.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Colors.white,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Roboto Condensed',
                                      color: Color(0xFF060303),
                                    ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(38.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
