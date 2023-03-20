import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'single_u_w_news_page_model.dart';
export 'single_u_w_news_page_model.dart';

class SingleUWNewsPageWidget extends StatefulWidget {
  const SingleUWNewsPageWidget({
    Key? key,
    this.newsId,
  }) : super(key: key);

  final DocumentReference? newsId;

  @override
  _SingleUWNewsPageWidgetState createState() => _SingleUWNewsPageWidgetState();
}

class _SingleUWNewsPageWidgetState extends State<SingleUWNewsPageWidget> {
  late SingleUWNewsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SingleUWNewsPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'singleUWNewsPage'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30.0,
          ),
          onPressed: () async {
            logFirebaseEvent('SINGLE_U_W_NEWS_arrow_back_rounded_ICN_O');
            logFirebaseEvent('IconButton_navigate_to');

            context.pushNamed('home');
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: StreamBuilder<NewsRecord>(
        stream: NewsRecord.getDocument(widget.newsId!),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitRipple(
                  color: FlutterFlowTheme.of(context).primaryColor,
                  size: 50.0,
                ),
              ),
            );
          }
          final columnNewsRecord = snapshot.data!;
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 16.0, 0.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.network(
                                valueOrDefault<String>(
                                  columnNewsRecord.image,
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/deneme-t2bsqd/assets/2n5lpastk3am/caretta-caretta-nedir.jpg',
                                ),
                                width: MediaQuery.of(context).size.width * 1.0,
                                height: double.infinity,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              columnNewsRecord.header!.maybeHandleOverflow(
                                maxChars: 70,
                                replacement: '…',
                              ),
                              maxLines: 2,
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 18.0,
                                      ),
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 35.0,
                              icon: FaIcon(
                                FontAwesomeIcons.trashAlt,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'SINGLE_U_W_NEWS_trashAlt_ICN_ON_TAP');
                                logFirebaseEvent('IconButton_alert_dialog');
                                var confirmDialogResponse =
                                    await showDialog<bool>(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Emin misiniz?'),
                                              content: Text(
                                                  'Paylaşım kalıcı olarak silinecek'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext,
                                                          false),
                                                  child: Text('İptal'),
                                                ),
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext,
                                                          true),
                                                  child: Text('Onayla'),
                                                ),
                                              ],
                                            );
                                          },
                                        ) ??
                                        false;
                                if (confirmDialogResponse) {
                                  logFirebaseEvent('IconButton_backend_call');
                                  await columnNewsRecord.reference.delete();
                                } else {
                                  return;
                                }

                                logFirebaseEvent('IconButton_show_snack_bar');
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Başarıyla silindi.',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 3000),
                                    backgroundColor: Color(0x00000000),
                                    action: SnackBarAction(
                                      label: 'Anasayfaya dön',
                                      textColor: Color(0x00000000),
                                      onPressed: () async {
                                        context.goNamed(
                                          'home',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                            ),
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 0.0),
                        child: Text(
                          columnNewsRecord.text!,
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryText,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 7.0,
                        color: Color(0x32000000),
                        offset: Offset(0.0, -2.0),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 30.0,
                                  height: 30.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/Ekran_Resmi_2023-03-16_23.19.36.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      6.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'diveusat',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Roboto Condensed',
                                          color: Colors.white,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ToggleIcon(
                                  onPressed: () async {
                                    setState(() => FFAppState().isLiked =
                                        !FFAppState().isLiked);
                                  },
                                  value: FFAppState().isLiked,
                                  onIcon: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 25.0,
                                  ),
                                  offIcon: Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                    size: 25.0,
                                  ),
                                ),
                                Text(
                                  '16 kişi beğendi',
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        fontSize: 14.0,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
