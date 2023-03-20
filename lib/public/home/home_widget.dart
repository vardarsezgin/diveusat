import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({
    Key? key,
    this.eventId,
    this.postId,
    this.tripId,
    this.newsId,
  }) : super(key: key);

  final DocumentReference? eventId;
  final DocumentReference? postId;
  final DocumentReference? tripId;
  final DocumentReference? newsId;

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'home'});
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

    return YoutubeFullScreenWrapper(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    color: Color(0xFF060303),
                    shape: BoxShape.rectangle,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 35.0,
                              height: 35.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                              child: AuthUserStreamWidget(
                                builder: (context) => Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  height:
                                      MediaQuery.of(context).size.width * 0.35,
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
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 160.9,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Selam',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color: Colors.white,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                valueOrDefault(
                                                    currentUserDocument
                                                        ?.username,
                                                    ''),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    1.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              ',',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: Colors.white,
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 50.0,
                                  fillColor: Color(0x00FFFFFF),
                                  icon: Icon(
                                    FFIcons.kmenu,
                                    color: Colors.white,
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'HOME_PAGE_menu_ICN_ON_TAP');
                                    logFirebaseEvent('IconButton_drawer');
                                    if (scaffoldKey
                                            .currentState!.isDrawerOpen ||
                                        scaffoldKey
                                            .currentState!.isEndDrawerOpen) {
                                      Navigator.pop(context);
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 5.0, 24.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 250.0,
                                  child: Divider(
                                    height: 1.0,
                                    thickness: 1.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 35.0, 24.0, 0.0),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent('HOME_PAGE_Row_lw1h36ho_ON_TAP');
                            logFirebaseEvent('Row_navigate_to');

                            context.pushNamed('home');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                child: Image.asset(
                                  'assets/images/homepage.png',
                                  width: 35.0,
                                  height: 35.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Anasayfa',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 15.0, 24.0, 0.0),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent('HOME_PAGE_Row_fgoidimi_ON_TAP');
                            logFirebaseEvent('Row_navigate_to');

                            context.pushNamed('home');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                child: Image.asset(
                                  'assets/images/news.png',
                                  width: 35.0,
                                  height: 35.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Duyurular',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 15.0, 24.0, 40.0),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent('HOME_PAGE_Row_tcrj07n8_ON_TAP');
                            logFirebaseEvent('Row_navigate_to');

                            context.pushNamed('home');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                child: Image.asset(
                                  'assets/images/events.png',
                                  width: 35.0,
                                  height: 35.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Etkinlikler',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent('HOME_PAGE_Row_ij850vqd_ON_TAP');
                            logFirebaseEvent('Row_navigate_to');

                            context.pushNamed('settings');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                child: Image.asset(
                                  'assets/images/profile.png',
                                  width: 35.0,
                                  height: 35.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Profil',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 10.0, 24.0, 40.0),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent('HOME_PAGE_Row_uatmx2co_ON_TAP');
                            logFirebaseEvent('Row_auth');
                            GoRouter.of(context).prepareAuthEvent();
                            await signOut();
                            GoRouter.of(context).clearRedirectLocation();

                            logFirebaseEvent('Row_navigate_to');

                            context.pushNamedAuth('firstpage', mounted);
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                child: Image.asset(
                                  'assets/images/exit.png',
                                  width: 35.0,
                                  height: 35.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Çıkış yap',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
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
            ],
          ),
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/GOPR0549.jpg',
                                    ).image,
                                  ),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xCD00072B),
                                        Color(0xBF000000)
                                      ],
                                      stops: [0.0, 1.0],
                                      begin: AlignmentDirectional(0.0, -1.0),
                                      end: AlignmentDirectional(0, 1.0),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1.0,
                                                height: 81.2,
                                                decoration: BoxDecoration(
                                                  color: Color(0x00FFFFFF),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 40.0,
                                                        icon: Icon(
                                                          FFIcons.kmenu,
                                                          color: Colors.white,
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () async {
                                                          logFirebaseEvent(
                                                              'HOME_PAGE_menu_ICN_ON_TAP');
                                                          logFirebaseEvent(
                                                              'IconButton_drawer');
                                                          scaffoldKey
                                                              .currentState!
                                                              .openDrawer();
                                                        },
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    12.0,
                                                                    16.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 200.0,
                                                          height: 45.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x1CFFFFFF),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 5.0,
                                                                color: Color(
                                                                    0x25090F13),
                                                                offset: Offset(
                                                                    5.0, 5.0),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            child:
                                                                BackdropFilter(
                                                              filter:
                                                                  ImageFilter
                                                                      .blur(
                                                                sigmaX: 5.0,
                                                                sigmaY: 5.0,
                                                              ),
                                                              child: InkWell(
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'HOME_PAGE_Container_svbp2o6a_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Container_navigate_to');

                                                                  context.pushNamed(
                                                                      'settings');
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 100.0,
                                                                  height: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            AuthUserStreamWidget(
                                                                              builder: (context) => Text(
                                                                                valueOrDefault(currentUserDocument?.username, ''),
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: 'Montserrat',
                                                                                      color: FlutterFlowTheme.of(context).textColor,
                                                                                      fontSize: 12.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            AuthUserStreamWidget(
                                                                              builder: (context) => Text(
                                                                                valueOrDefault<String>(
                                                                                  valueOrDefault(currentUserDocument?.userRole, ''),
                                                                                  'Üye',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: 'Montserrat',
                                                                                      color: Colors.white,
                                                                                      fontSize: 10.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        AuthUserStreamWidget(
                                                                          builder: (context) =>
                                                                              Container(
                                                                            width:
                                                                                MediaQuery.of(context).size.width * 0.08,
                                                                            height:
                                                                                MediaQuery.of(context).size.width * 0.08,
                                                                            clipBehavior:
                                                                                Clip.antiAlias,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                Image.network(
                                                                              valueOrDefault<String>(
                                                                                valueOrDefault(currentUserDocument?.userImage, ''),
                                                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/deneme-t2bsqd/assets/kohz3xzsugu4/cute-diver-ocean-cartoon-vector-icon-illustration-science-nature-icon-concept-isolated-premium_138676-5610.jpg',
                                                                              ),
                                                                              fit: BoxFit.contain,
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
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'DIVE\nUSAT',
                                                          textAlign:
                                                              TextAlign.end,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14.0,
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
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0x2EFFFFFF),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(16.0),
                                                topRight: Radius.circular(16.0),
                                              ),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              child: BackdropFilter(
                                                filter: ImageFilter.blur(
                                                  sigmaX: 3.0,
                                                  sigmaY: 3.0,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Divider(
                                                          height: 8.0,
                                                          thickness: 4.0,
                                                          indent: 140.0,
                                                          endIndent: 140.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .lineColor,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      12.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                'Son Duyurular',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .title2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          18.0,
                                                                    ),
                                                              ),
                                                              Image.asset(
                                                                'assets/images/news.png',
                                                                width: 30.0,
                                                                height: 30.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'bildirimlerini açmayı unutma!',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto Condensed',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          12.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      6.0,
                                                                      6.0,
                                                                      0.0,
                                                                      6.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height: 180.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: StreamBuilder<
                                                                List<
                                                                    NotificationsRecord>>(
                                                              stream:
                                                                  queryNotificationsRecord(
                                                                queryBuilder: (notificationsRecord) =>
                                                                    notificationsRecord.orderBy(
                                                                        'p_timestamps',
                                                                        descending:
                                                                            true),
                                                                limit: 5,
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          SpinKitRipple(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<NotificationsRecord>
                                                                    horizontalListNotificationsRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  primary:
                                                                      false,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.horizontal,
                                                                  itemCount:
                                                                      horizontalListNotificationsRecordList
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          horizontalListIndex) {
                                                                    final horizontalListNotificationsRecord =
                                                                        horizontalListNotificationsRecordList[
                                                                            horizontalListIndex];
                                                                    return Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child:
                                                                          InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'HOME_PAGE_Container_946fjkp3_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Container_navigate_to');

                                                                          context
                                                                              .pushNamed(
                                                                            'singlePostPage',
                                                                            queryParams:
                                                                                {
                                                                              'postId': serializeParam(
                                                                                horizontalListNotificationsRecord.reference,
                                                                                ParamType.DocumentReference,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                MediaQuery.of(context).size.width * 0.5,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              image: DecorationImage(
                                                                                fit: BoxFit.cover,
                                                                                image: CachedNetworkImageProvider(
                                                                                  valueOrDefault<String>(
                                                                                    horizontalListNotificationsRecord.image,
                                                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/deneme-t2bsqd/assets/zaademmujzri/duyurugorsel.png',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 4.0,
                                                                                  color: Color(0x230F1113),
                                                                                  offset: Offset(4.0, 4.0),
                                                                                  spreadRadius: 4.0,
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Stack(
                                                                                    children: [
                                                                                      Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 16.0, 12.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              children: [
                                                                                                Column(
                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    ClipRRect(
                                                                                                      borderRadius: BorderRadius.only(
                                                                                                        bottomLeft: Radius.circular(0.0),
                                                                                                        bottomRight: Radius.circular(12.0),
                                                                                                        topLeft: Radius.circular(0.0),
                                                                                                        topRight: Radius.circular(12.0),
                                                                                                      ),
                                                                                                      child: Container(
                                                                                                        constraints: BoxConstraints(
                                                                                                          maxWidth: MediaQuery.of(context).size.width * 0.4,
                                                                                                        ),
                                                                                                        decoration: BoxDecoration(
                                                                                                          color: Color(0x83000000),
                                                                                                          boxShadow: [
                                                                                                            BoxShadow(
                                                                                                              blurRadius: 4.0,
                                                                                                              color: Color(0x33000000),
                                                                                                              offset: Offset(0.0, 2.0),
                                                                                                            )
                                                                                                          ],
                                                                                                          borderRadius: BorderRadius.only(
                                                                                                            bottomLeft: Radius.circular(0.0),
                                                                                                            bottomRight: Radius.circular(12.0),
                                                                                                            topLeft: Radius.circular(0.0),
                                                                                                            topRight: Radius.circular(12.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 2.0),
                                                                                                          child: AutoSizeText(
                                                                                                            horizontalListNotificationsRecord.header!.maybeHandleOverflow(maxChars: 50),
                                                                                                            textAlign: TextAlign.start,
                                                                                                            maxLines: 2,
                                                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                                                  fontFamily: 'Roboto',
                                                                                                                  color: Colors.white,
                                                                                                                  fontSize: 12.0,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          ClipRRect(
                                                                                                            borderRadius: BorderRadius.only(
                                                                                                              bottomLeft: Radius.circular(0.0),
                                                                                                              bottomRight: Radius.circular(12.0),
                                                                                                              topLeft: Radius.circular(0.0),
                                                                                                              topRight: Radius.circular(12.0),
                                                                                                            ),
                                                                                                            child: Container(
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: Color(0x83000000),
                                                                                                                boxShadow: [
                                                                                                                  BoxShadow(
                                                                                                                    blurRadius: 4.0,
                                                                                                                    color: Color(0x33000000),
                                                                                                                    offset: Offset(0.0, 2.0),
                                                                                                                  )
                                                                                                                ],
                                                                                                                borderRadius: BorderRadius.only(
                                                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                                                  bottomRight: Radius.circular(12.0),
                                                                                                                  topLeft: Radius.circular(0.0),
                                                                                                                  topRight: Radius.circular(12.0),
                                                                                                                ),
                                                                                                              ),
                                                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                              child: Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(6.0, 6.0, 6.0, 6.0),
                                                                                                                child: Text(
                                                                                                                  dateTimeFormat(
                                                                                                                    'relative',
                                                                                                                    horizontalListNotificationsRecord.pTimestamps!,
                                                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                                                  ),
                                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                        fontFamily: 'Montserrat',
                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                        fontSize: 8.0,
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
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      6.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                'Gezi & Kamp',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .title2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          18.0,
                                                                    ),
                                                              ),
                                                              Image.asset(
                                                                'assets/images/events.png',
                                                                width: 30.0,
                                                                height: 30.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      6.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'takipte kal, etkinliklerimizi kaçırma',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto Condensed',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          12.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: StreamBuilder<
                                                              List<
                                                                  TripsRecord>>(
                                                            stream:
                                                                queryTripsRecord(
                                                              queryBuilder: (tripsRecord) =>
                                                                  tripsRecord.orderBy(
                                                                      'p_timestamps',
                                                                      descending:
                                                                          true),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        SpinKitRipple(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      size:
                                                                          50.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<TripsRecord>
                                                                  tripsTripsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    tripsTripsRecordList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        tripsIndex) {
                                                                  final tripsTripsRecord =
                                                                      tripsTripsRecordList[
                                                                          tripsIndex];
                                                                  return Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            8.0),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'HOME_PAGE_Container_e2m08dmd_ON_TAP');
                                                                        logFirebaseEvent(
                                                                            'Container_navigate_to');

                                                                        context
                                                                            .pushNamed(
                                                                          'singleTripPage',
                                                                          queryParams:
                                                                              {
                                                                            'tripId':
                                                                                serializeParam(
                                                                              tripsTripsRecord.reference,
                                                                              ParamType.DocumentReference,
                                                                            ),
                                                                          }.withoutNulls,
                                                                        );
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        width: MediaQuery.of(context).size.width *
                                                                            0.6,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 8.0,
                                                                              color: Color(0x230F1113),
                                                                              offset: Offset(0.0, 4.0),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Hero(
                                                                              tag: tripsTripsRecord.image!,
                                                                              transitionOnUserGestures: true,
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                child: Image.network(
                                                                                  tripsTripsRecord.image!,
                                                                                  width: double.infinity,
                                                                                  height: 240.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 6.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Text(
                                                                                          tripsTripsRecord.header!,
                                                                                          style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                                fontFamily: 'Roboto',
                                                                                                fontSize: 12.0,
                                                                                              ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                                                                                                child: Text(
                                                                                                  '4 kişi katılıyor',
                                                                                                  style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                        fontFamily: 'Roboto Condensed',
                                                                                                        fontSize: 10.0,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Container(
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  borderRadius: BorderRadius.circular(12.0),
                                                                                                ),
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(6.0, 6.0, 6.0, 6.0),
                                                                                                  child: Text(
                                                                                                    dateTimeFormat(
                                                                                                      'relative',
                                                                                                      tripsTripsRecord.pTimestamps!,
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                          fontFamily: 'Montserrat',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          fontSize: 8.0,
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
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      12.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                'Etkinlikler',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .title2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          18.0,
                                                                    ),
                                                              ),
                                                              Image.asset(
                                                                'assets/images/exit.png',
                                                                width: 30.0,
                                                                height: 30.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      6.0,
                                                                      6.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height: 200.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: StreamBuilder<
                                                                List<
                                                                    EventsRecord>>(
                                                              stream:
                                                                  queryEventsRecord(
                                                                queryBuilder: (eventsRecord) =>
                                                                    eventsRecord.orderBy(
                                                                        'p_timestamps',
                                                                        descending:
                                                                            true),
                                                                limit: 5,
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          SpinKitRipple(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<EventsRecord>
                                                                    horizontalListEventsRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  primary:
                                                                      false,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.horizontal,
                                                                  itemCount:
                                                                      horizontalListEventsRecordList
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          horizontalListIndex) {
                                                                    final horizontalListEventsRecord =
                                                                        horizontalListEventsRecordList[
                                                                            horizontalListIndex];
                                                                    return Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          6.0,
                                                                          8.0,
                                                                          10.0,
                                                                          8.0),
                                                                      child:
                                                                          InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'HOME_PAGE_Container_yvvad8u7_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Container_navigate_to');

                                                                          context
                                                                              .pushNamed(
                                                                            'singleEventPage',
                                                                            queryParams:
                                                                                {
                                                                              'eventId': serializeParam(
                                                                                horizontalListEventsRecord.reference,
                                                                                ParamType.DocumentReference,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              270.0,
                                                                          height:
                                                                              100.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            boxShadow: [
                                                                              BoxShadow(
                                                                                blurRadius: 8.0,
                                                                                color: Color(0x230F1113),
                                                                                offset: Offset(0.0, 4.0),
                                                                              )
                                                                            ],
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.only(
                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                  bottomRight: Radius.circular(0.0),
                                                                                  topLeft: Radius.circular(12.0),
                                                                                  topRight: Radius.circular(12.0),
                                                                                ),
                                                                                child: Image.network(
                                                                                  valueOrDefault<String>(
                                                                                    horizontalListEventsRecord.image,
                                                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/deneme-t2bsqd/assets/i4nfcljsulhk/Yine-guzel-bir-mac-ile-finallerin-ardindan-birlikteydik-Katilan-herkese.jpg',
                                                                                  ),
                                                                                  width: double.infinity,
                                                                                  height: 130.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          AutoSizeText(
                                                                                            horizontalListEventsRecord.header!,
                                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                                  fontFamily: 'Roboto',
                                                                                                  fontSize: 12.0,
                                                                                                ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                                                                                                  child: Text(
                                                                                                    '6 kişi katılıyor',
                                                                                                    style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                          fontFamily: 'Roboto Condensed',
                                                                                                          fontSize: 10.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                                Container(
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                                  ),
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(6.0, 6.0, 6.0, 6.0),
                                                                                                    child: Text(
                                                                                                      dateTimeFormat(
                                                                                                        'relative',
                                                                                                        horizontalListEventsRecord.pTimestamps!,
                                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                            fontFamily: 'Montserrat',
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            fontSize: 8.0,
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
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      12.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                'Sualtındaki Gelişmeler',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .title2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          18.0,
                                                                    ),
                                                              ),
                                                              Image.asset(
                                                                'assets/images/homepage.png',
                                                                width: 30.0,
                                                                height: 30.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'Son gelişmeleri USAT\'la öğren & paylaş',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto Condensed',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          12.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      12.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height: 200.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: StreamBuilder<
                                                                List<
                                                                    NewsRecord>>(
                                                              stream:
                                                                  queryNewsRecord(
                                                                queryBuilder: (newsRecord) =>
                                                                    newsRecord.orderBy(
                                                                        'p_timestamps',
                                                                        descending:
                                                                            true),
                                                                limit: 5,
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          SpinKitRipple(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<NewsRecord>
                                                                    horizontalListNewsRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  primary:
                                                                      false,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.horizontal,
                                                                  itemCount:
                                                                      horizontalListNewsRecordList
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          horizontalListIndex) {
                                                                    final horizontalListNewsRecord =
                                                                        horizontalListNewsRecordList[
                                                                            horizontalListIndex];
                                                                    return Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          10.0,
                                                                          8.0),
                                                                      child:
                                                                          InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'HOME_PAGE_Container_s2mqfvj6_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Container_navigate_to');

                                                                          context
                                                                              .pushNamed(
                                                                            'singleUWNewsPage',
                                                                            queryParams:
                                                                                {
                                                                              'newsId': serializeParam(
                                                                                horizontalListNewsRecord.reference,
                                                                                ParamType.DocumentReference,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              270.0,
                                                                          height:
                                                                              100.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            boxShadow: [
                                                                              BoxShadow(
                                                                                blurRadius: 8.0,
                                                                                color: Color(0x230F1113),
                                                                                offset: Offset(0.0, 4.0),
                                                                              )
                                                                            ],
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.only(
                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                  bottomRight: Radius.circular(0.0),
                                                                                  topLeft: Radius.circular(12.0),
                                                                                  topRight: Radius.circular(12.0),
                                                                                ),
                                                                                child: Image.network(
                                                                                  valueOrDefault<String>(
                                                                                    horizontalListNewsRecord.image,
                                                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/deneme-t2bsqd/assets/2n5lpastk3am/caretta-caretta-nedir.jpg',
                                                                                  ),
                                                                                  width: double.infinity,
                                                                                  height: 130.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          AutoSizeText(
                                                                                            horizontalListNewsRecord.header!,
                                                                                            style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                                  fontFamily: 'Roboto',
                                                                                                  fontSize: 12.0,
                                                                                                ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Yazı',
                                                                                                    style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                          fontFamily: 'Roboto Condensed',
                                                                                                          fontSize: 10.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                                Container(
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                                  ),
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(6.0, 6.0, 6.0, 6.0),
                                                                                                    child: Text(
                                                                                                      dateTimeFormat(
                                                                                                        'relative',
                                                                                                        horizontalListNewsRecord.pTimestamps!,
                                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                            fontFamily: 'Montserrat',
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            fontSize: 8.0,
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
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child:
                                                                SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'Videolar',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .subtitle1
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              color: Colors.white,
                                                                            ),
                                                                      ),
                                                                      FlutterFlowIconButton(
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderRadius:
                                                                            30.0,
                                                                        borderWidth:
                                                                            1.0,
                                                                        buttonSize:
                                                                            50.0,
                                                                        icon:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .youtube,
                                                                          color:
                                                                              Colors.white,
                                                                          size:
                                                                              30.0,
                                                                        ),
                                                                        onPressed:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'HOME_PAGE_youtube_ICN_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'IconButton_launch_u_r_l');
                                                                          await launchURL(
                                                                              'https://www.youtube.com/@usatdiver/videos');
                                                                        },
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Divider(
                                                                    thickness:
                                                                        0.5,
                                                                    indent:
                                                                        30.0,
                                                                    endIndent:
                                                                        30.0,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  FlutterFlowYoutubePlayer(
                                                                    url:
                                                                        'https://www.youtube.com/watch?v=4PKXWDDheBs',
                                                                    autoPlay:
                                                                        false,
                                                                    looping:
                                                                        false,
                                                                    mute: false,
                                                                    showControls:
                                                                        true,
                                                                    showFullScreen:
                                                                        true,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      12.0,
                                                                      0.0,
                                                                      85.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'diveusat.com tüm hakları saklıdır.',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
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
                        ],
                      ),
                    ),
                  ],
                ),
                if (valueOrDefault(currentUserDocument?.userRole, '') ==
                    'admin')
                  AuthUserStreamWidget(
                    builder: (context) => wrapWithModel(
                      model: _model.navBarModel,
                      updateCallback: () => setState(() {}),
                      child: NavBarWidget(),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
