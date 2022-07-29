import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountWidget extends StatefulWidget {
  const CreateAccountWidget({Key key}) : super(key: key);

  @override
  _CreateAccountWidgetState createState() => _CreateAccountWidgetState();
}

class _CreateAccountWidgetState extends State<CreateAccountWidget> {
  String dropDownValue1;
  TextEditingController confirmPasswordTextController;
  bool passwordVisibility2;
  TextEditingController passwordTextController;
  bool passwordVisibility1;
  TextEditingController textController1;
  String dropDownValue2;
  TextEditingController emailTextController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPasswordTextController = TextEditingController();
    passwordVisibility2 = false;
    passwordTextController = TextEditingController();
    passwordVisibility1 = false;
    textController1 = TextEditingController();
    emailTextController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            'v2uajse8' /* sign up */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Color(0xFF662D91),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'qnx2qc9p' /* name */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2,
                    ),
                  ),
                  TextFormField(
                    controller: textController1,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: FFLocalizations.of(context).getText(
                        '85dad0km' /* enter your name */,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                    keyboardType: TextInputType.name,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return FFLocalizations.of(context).getText(
                          'rbcp7cdl' /* Field is required */,
                        );
                      }
                      if (val.length < 3) {
                        return FFLocalizations.of(context).getText(
                          'tv0l8vqr' /* at least than 3 characters */,
                        );
                      }

                      return null;
                    },
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '10g4i1rj' /* password */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2,
                    ),
                  ),
                  TextFormField(
                    controller: passwordTextController,
                    obscureText: !passwordVisibility1,
                    decoration: InputDecoration(
                      hintText: FFLocalizations.of(context).getText(
                        'q133p375' /* enter your password */,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passwordVisibility1 = !passwordVisibility1,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          passwordVisibility1
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                    keyboardType: TextInputType.visiblePassword,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return FFLocalizations.of(context).getText(
                          'cide9tlu' /* Field is required */,
                        );
                      }
                      if (val.length < 6) {
                        return FFLocalizations.of(context).getText(
                          '5p6lm9ep' /* at least than 6 characters */,
                        );
                      }

                      return null;
                    },
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'x623ign4' /* confirm password */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2,
                    ),
                  ),
                  TextFormField(
                    controller: confirmPasswordTextController,
                    obscureText: !passwordVisibility2,
                    decoration: InputDecoration(
                      hintText: FFLocalizations.of(context).getText(
                        '3k0u8ule' /* enter your password */,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passwordVisibility2 = !passwordVisibility2,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          passwordVisibility2
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                    keyboardType: TextInputType.visiblePassword,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return FFLocalizations.of(context).getText(
                          'i52f7439' /* Field is required */,
                        );
                      }
                      if (val.length < 6) {
                        return FFLocalizations.of(context).getText(
                          '1tiejvpv' /* at least than 6 characters */,
                        );
                      }

                      return null;
                    },
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'pa1g6xzx' /* function */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2,
                    ),
                  ),
                  FlutterFlowDropDown(
                    options: [
                      FFLocalizations.of(context).getText(
                        'o29re4h0' /* general director */,
                      ),
                      FFLocalizations.of(context).getText(
                        'rjizerps' /* maintainer */,
                      ),
                      FFLocalizations.of(context).getText(
                        't6vnrqp1' /* storekeeper */,
                      ),
                      FFLocalizations.of(context).getText(
                        'qo13bteu' /* others */,
                      )
                    ],
                    onChanged: (val) => setState(() => dropDownValue1 = val),
                    width: 180,
                    height: 50,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                    hintText: FFLocalizations.of(context).getText(
                      '8yu678j6' /* Please select... */,
                    ),
                    fillColor: Colors.white,
                    elevation: 2,
                    borderColor: Colors.transparent,
                    borderWidth: 0,
                    borderRadius: 0,
                    margin: EdgeInsetsDirectional.fromSTEB(0, 4, 12, 4),
                    hidesUnderline: true,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'bl2yanh1' /* trade */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2,
                    ),
                  ),
                  FlutterFlowDropDown(
                    options: [
                      FFLocalizations.of(context).getText(
                        'koc9kjd3' /* trade 1 */,
                      ),
                      FFLocalizations.of(context).getText(
                        'rygta3n1' /* trade 2 */,
                      ),
                      FFLocalizations.of(context).getText(
                        'ez3mucuq' /* trade 3 */,
                      ),
                      FFLocalizations.of(context).getText(
                        '0j4lef10' /* trade 4 */,
                      ),
                      FFLocalizations.of(context).getText(
                        'bepuy6lu' /* trade 5 */,
                      )
                    ],
                    onChanged: (val) => setState(() => dropDownValue2 = val),
                    width: 180,
                    height: 50,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                    hintText: FFLocalizations.of(context).getText(
                      'orzytyfe' /* Please select... */,
                    ),
                    fillColor: Colors.white,
                    elevation: 2,
                    borderColor: Colors.transparent,
                    borderWidth: 0,
                    borderRadius: 0,
                    margin: EdgeInsetsDirectional.fromSTEB(0, 4, 12, 4),
                    hidesUnderline: true,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'n4un6ebc' /* email */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2,
                    ),
                  ),
                  TextFormField(
                    controller: emailTextController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: FFLocalizations.of(context).getText(
                        'ej02cx3i' /* enter your address */,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return FFLocalizations.of(context).getText(
                          'e2ycjmzx' /* Field is required */,
                        );
                      }

                      return null;
                    },
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.95, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (formKey.currentState == null ||
                              !formKey.currentState.validate()) {
                            return;
                          }

                          if (dropDownValue1 == null) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  content: Text('select one function'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                            return;
                          }
                          if (dropDownValue2 == null) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  content: Text('select one trade'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                            return;
                          }

                          GoRouter.of(context).prepareAuthEvent();
                          if (passwordTextController?.text !=
                              confirmPasswordTextController?.text) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Passwords don\'t match!',
                                ),
                              ),
                            );
                            return;
                          }

                          final user = await createAccountWithEmail(
                            context,
                            emailTextController.text,
                            passwordTextController.text,
                          );
                          if (user == null) {
                            return;
                          }

                          final utilisateursCreateData =
                              createUtilisateursRecordData(
                            nom: textController1.text,
                            motDePasse: confirmPasswordTextController.text,
                            fonction: dropDownValue1,
                            corpsDeMetier: dropDownValue2,
                            email: emailTextController.text,
                            createdTime: getCurrentTimestamp,
                          );
                          await UtilisateursRecord.collection
                              .doc(user.uid)
                              .update(utilisateursCreateData);

                          if (valueOrDefault(
                                  currentUserDocument?.fonction, '') ==
                              'directeur général') {
                            context.pushNamedAuth(
                                'user_interface2_bon', mounted);
                          } else {
                            if (valueOrDefault(
                                    currentUserDocument?.fonction, '') ==
                                'magasinier') {
                              context.pushNamedAuth(
                                  'user_interface3_bon', mounted);
                            } else {
                              context.pushNamedAuth(
                                  'user_interface1_bon', mounted);
                            }
                          }
                        },
                        text: FFLocalizations.of(context).getText(
                          'u0190nb2' /* save */,
                        ),
                        options: FFButtonOptions(
                          width: 140,
                          height: 60,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 2,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
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
