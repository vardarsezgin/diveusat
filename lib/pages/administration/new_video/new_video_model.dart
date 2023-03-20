import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewVideoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for post_name widget.
  TextEditingController? postNameController;
  String? Function(BuildContext, String?)? postNameControllerValidator;
  // State field(s) for post_text widget.
  TextEditingController? postTextController;
  String? Function(BuildContext, String?)? postTextControllerValidator;
  // State field(s) for organizator widget.
  TextEditingController? organizatorController;
  String? Function(BuildContext, String?)? organizatorControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownController;
  bool isMediaUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    postNameController?.dispose();
    postTextController?.dispose();
    organizatorController?.dispose();
  }

  /// Additional helper methods are added here.

}
