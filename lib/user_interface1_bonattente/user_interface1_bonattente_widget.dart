import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInterface1BonattenteWidget extends StatefulWidget {
  const UserInterface1BonattenteWidget({
    Key key,
    this.bon,
  }) : super(key: key);

  final BonEnAttenteRecord bon;

  @override
  _UserInterface1BonattenteWidgetState createState() =>
      _UserInterface1BonattenteWidgetState();
}

class _UserInterface1BonattenteWidgetState
    extends State<UserInterface1BonattenteWidget> {
  String dropDownValue1;
  TextEditingController textController1;
  TextEditingController textController2;
  String dropDownValue2;
  TextEditingController textController3;
  final formKey1 = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey2 = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() => FFAppState().CodifBon = widget.bon.code);
    });

    textController1 = TextEditingController();
    textController2 = TextEditingController(text: widget.bon.nom);
    textController3 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ArticleSelectonneRecord>>(
      stream: queryArticleSelectonneRecord(
        queryBuilder: (articleSelectonneRecord) => articleSelectonneRecord
            .where('code',
                isEqualTo:
                    FFAppState().CodifBon != '' ? FFAppState().CodifBon : null)
            .where('nature', isEqualTo: 'com'),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<ArticleSelectonneRecord>
            userInterface1BonattenteArticleSelectonneRecordList = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Color(0xFF662D91),
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30,
              ),
              onPressed: () async {
                context.pop();
                setState(() => FFAppState().CodifBon = '\"\"');
              },
            ),
            title: Text(
              FFLocalizations.of(context).getText(
                'xk9prnrt' /* Edit */,
              ),
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 10,
          ),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: StreamBuilder<List<DateEnAttenteRecord>>(
              stream: queryDateEnAttenteRecord(
                queryBuilder: (dateEnAttenteRecord) => dateEnAttenteRecord
                    .where('date',
                        isEqualTo:
                            dateTimeFormat('yMMMd', getCurrentTimestamp) != ''
                                ? dateTimeFormat('yMMMd', getCurrentTimestamp)
                                : null)
                    .where('nature', isEqualTo: 'com'),
                singleRecord: true,
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  );
                }
                List<DateEnAttenteRecord> stackDateEnAttenteRecordList =
                    snapshot.data;
                final stackDateEnAttenteRecord =
                    stackDateEnAttenteRecordList.isNotEmpty
                        ? stackDateEnAttenteRecordList.first
                        : null;
                return Stack(
                  children: [
                    StreamBuilder<List<BonEnAttenteRecord>>(
                      stream: queryBonEnAttenteRecord(
                        queryBuilder: (bonEnAttenteRecord) => bonEnAttenteRecord
                            .where('date',
                                isEqualTo: dateTimeFormat(
                                            'yMMMd', getCurrentTimestamp) !=
                                        ''
                                    ? dateTimeFormat(
                                        'yMMMd', getCurrentTimestamp)
                                    : null)
                            .where('nature', isEqualTo: 'com')
                            .where('demandeur',
                                isEqualTo: currentUserReference),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<BonEnAttenteRecord>
                            containerBonEnAttenteRecordList = snapshot.data;
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 1,
                          decoration: BoxDecoration(),
                          child: StreamBuilder<List<DateEnvoyeRecord>>(
                            stream: queryDateEnvoyeRecord(
                              queryBuilder: (dateEnvoyeRecord) =>
                                  dateEnvoyeRecord
                                      .where(
                                          'date',
                                          isEqualTo: dateTimeFormat('yMMMd',
                                                      getCurrentTimestamp) !=
                                                  ''
                                              ? dateTimeFormat(
                                                  'yMMMd', getCurrentTimestamp)
                                              : null)
                                      .where('demandeur',
                                          isEqualTo: currentUserReference)
                                      .where('nature', isEqualTo: 'com'),
                              singleRecord: true,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<DateEnvoyeRecord>
                                  containerDateEnvoyeRecordList = snapshot.data;
                              final containerDateEnvoyeRecord =
                                  containerDateEnvoyeRecordList.isNotEmpty
                                      ? containerDateEnvoyeRecordList.first
                                      : null;
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 1,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 5, 5, 0),
                                  child: StreamBuilder<
                                      List<DateEnTraitementRecord>>(
                                    stream: queryDateEnTraitementRecord(
                                      queryBuilder: (dateEnTraitementRecord) =>
                                          dateEnTraitementRecord
                                              .where('date',
                                                  isEqualTo: dateTimeFormat(
                                                              'yMMMd',
                                                              getCurrentTimestamp) !=
                                                          ''
                                                      ? dateTimeFormat('yMMMd',
                                                          getCurrentTimestamp)
                                                      : null)
                                              .where('demandeur',
                                                  isEqualTo:
                                                      currentUserReference)
                                              .where('nature',
                                                  isEqualTo: 'com'),
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<DateEnTraitementRecord>
                                          columnDateEnTraitementRecordList =
                                          snapshot.data;
                                      final columnDateEnTraitementRecord =
                                          columnDateEnTraitementRecordList
                                                  .isNotEmpty
                                              ? columnDateEnTraitementRecordList
                                                  .first
                                              : null;
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Form(
                                            key: formKey1,
                                            autovalidateMode:
                                                AutovalidateMode.disabled,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10,
                                                                    10, 0, 0),
                                                        child: StreamBuilder<
                                                            List<
                                                                BonEnAttenteRecord>>(
                                                          stream:
                                                              queryBonEnAttenteRecord(
                                                            queryBuilder: (bonEnAttenteRecord) => bonEnAttenteRecord
                                                                .where('code',
                                                                    isEqualTo: FFAppState().CodifBon !=
                                                                            ''
                                                                        ? FFAppState()
                                                                            .CodifBon
                                                                        : null)
                                                                .where('nature',
                                                                    isEqualTo:
                                                                        'com'),
                                                            singleRecord: true,
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50,
                                                                  height: 50,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<BonEnAttenteRecord>
                                                                rowBonEnAttenteRecordList =
                                                                snapshot.data;
                                                            final rowBonEnAttenteRecord =
                                                                rowBonEnAttenteRecordList
                                                                        .isNotEmpty
                                                                    ? rowBonEnAttenteRecordList
                                                                        .first
                                                                    : null;
                                                            return Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'bd93tnwk' /* Code */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                                StreamBuilder<
                                                                    List<
                                                                        ArticleSelectonneRecord>>(
                                                                  stream:
                                                                      queryArticleSelectonneRecord(
                                                                    queryBuilder: (articleSelectonneRecord) => articleSelectonneRecord
                                                                        .where(
                                                                            'code',
                                                                            isEqualTo: FFAppState().CodifBon != ''
                                                                                ? FFAppState()
                                                                                    .CodifBon
                                                                                : null)
                                                                        .where(
                                                                            'nature',
                                                                            isEqualTo:
                                                                                'com'),
                                                                    singleRecord:
                                                                        true,
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
                                                                              50,
                                                                          height:
                                                                              50,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryColor,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<ArticleSelectonneRecord>
                                                                        iconButtonArticleSelectonneRecordList =
                                                                        snapshot
                                                                            .data;
                                                                    final iconButtonArticleSelectonneRecord = iconButtonArticleSelectonneRecordList
                                                                            .isNotEmpty
                                                                        ? iconButtonArticleSelectonneRecordList
                                                                            .first
                                                                        : null;
                                                                    return FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30,
                                                                      borderWidth:
                                                                          1,
                                                                      buttonSize:
                                                                          40,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .autorenew,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                        size:
                                                                            15,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        if (iconButtonArticleSelectonneRecord !=
                                                                            null) {
                                                                          final articleSelectonneUpdateData =
                                                                              createArticleSelectonneRecordData(
                                                                            code:
                                                                                FFAppState().CodifBon,
                                                                          );
                                                                          await iconButtonArticleSelectonneRecord
                                                                              .reference
                                                                              .update(articleSelectonneUpdateData);

                                                                          final bonEnAttenteUpdateData =
                                                                              createBonEnAttenteRecordData(
                                                                            code:
                                                                                FFAppState().CodifBon,
                                                                          );
                                                                          await rowBonEnAttenteRecord
                                                                              .reference
                                                                              .update(bonEnAttenteUpdateData);
                                                                        } else {
                                                                          setState(() =>
                                                                              FFAppState().CodifBon = random_data.randomString(
                                                                                7,
                                                                                7,
                                                                                false,
                                                                                false,
                                                                                true,
                                                                              ));
                                                                        }
                                                                      },
                                                                    );
                                                                  },
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                      TextFormField(
                                                        controller:
                                                            textController1,
                                                        onChanged: (_) =>
                                                            EasyDebounce
                                                                .debounce(
                                                          'textController1',
                                                          Duration(
                                                              milliseconds:
                                                                  2000),
                                                          () => setState(() {}),
                                                        ),
                                                        readOnly: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: true,
                                                          hintText: FFAppState()
                                                              .CodifBon,
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFF662D91),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      4.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      4.0),
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFF662D91),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      4.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      4.0),
                                                            ),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              Color(0x80662D91),
                                                          suffixIcon:
                                                              textController1
                                                                      .text
                                                                      .isNotEmpty
                                                                  ? InkWell(
                                                                      onTap: () =>
                                                                          setState(
                                                                        () => textController1
                                                                            ?.clear(),
                                                                      ),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .clear,
                                                                        color: Color(
                                                                            0xFF757575),
                                                                        size:
                                                                            22,
                                                                      ),
                                                                    )
                                                                  : null,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFF818181),
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                        maxLines: 1,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10,
                                                                    10, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'n2v95s6w' /* Intitulé */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      TextFormField(
                                                        controller:
                                                            textController2,
                                                        onChanged: (_) =>
                                                            EasyDebounce
                                                                .debounce(
                                                          'textController2',
                                                          Duration(
                                                              milliseconds:
                                                                  2000),
                                                          () => setState(() {}),
                                                        ),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: true,
                                                          hintText:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                            'q6yej57t' /* the enter voucher name */,
                                                          ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFF662D91),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      4.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      4.0),
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFF662D91),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      4.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      4.0),
                                                            ),
                                                          ),
                                                          filled: true,
                                                          suffixIcon:
                                                              textController2
                                                                      .text
                                                                      .isNotEmpty
                                                                  ? InkWell(
                                                                      onTap: () =>
                                                                          setState(
                                                                        () => textController2
                                                                            ?.clear(),
                                                                      ),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .clear,
                                                                        color: Color(
                                                                            0xFF757575),
                                                                        size:
                                                                            22,
                                                                      ),
                                                                    )
                                                                  : null,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFF818181),
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                        maxLines: 1,
                                                        validator: (val) {
                                                          if (val == null ||
                                                              val.isEmpty) {
                                                            return FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'qc7i40w7' /* Field is required */,
                                                            );
                                                          }
                                                          if (val.length < 6) {
                                                            return FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              '5ew6xaoh' /* at least than 6 characters */,
                                                            );
                                                          }

                                                          return null;
                                                        },
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10,
                                                                    20, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'z4ayz83d' /* Priorité */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      FlutterFlowDropDown(
                                                        initialOption:
                                                            dropDownValue1 ??=
                                                                widget.bon
                                                                    .priorite,
                                                        options: [
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'sclw5hlz' /* 0 */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '5sdi5ime' /* 1 */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '7sayughs' /* 2 */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'j842wnjn' /* 3 */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'kmwvvh2n' /* 4 */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'h1v15h2u' /* 5 */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '8fg5ar71' /* 6 */,
                                                          )
                                                        ],
                                                        onChanged: (val) =>
                                                            setState(() =>
                                                                dropDownValue1 =
                                                                    val),
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.06,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFF818181),
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'oo7tbglg' /* Please select */,
                                                        ),
                                                        fillColor: Colors.white,
                                                        elevation: 2,
                                                        borderColor:
                                                            Color(0xFF662D91),
                                                        borderWidth: 0,
                                                        borderRadius: 0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 4, 8, 4),
                                                        hidesUnderline: true,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 20, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6m86dd1d' /* Article */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ],
                                            ),
                                          ),
                                          StreamBuilder<List<ArticlesRecord>>(
                                            stream: queryArticlesRecord(
                                              queryBuilder: (articlesRecord) =>
                                                  articlesRecord.orderBy('nom'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ArticlesRecord>
                                                  formArticlesRecordList =
                                                  snapshot.data;
                                              return Form(
                                                key: formKey2,
                                                autovalidateMode:
                                                    AutovalidateMode.disabled,
                                                child: StreamBuilder<
                                                    List<ArticlesRecord>>(
                                                  stream: queryArticlesRecord(
                                                    queryBuilder: (articlesRecord) =>
                                                        articlesRecord.where(
                                                            'nom',
                                                            isEqualTo:
                                                                dropDownValue2 !=
                                                                        ''
                                                                    ? dropDownValue2
                                                                    : null),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<ArticlesRecord>
                                                        containerArticlesRecordList =
                                                        snapshot.data;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot.data.isEmpty) {
                                                      return Container();
                                                    }
                                                    final containerArticlesRecord =
                                                        containerArticlesRecordList
                                                                .isNotEmpty
                                                            ? containerArticlesRecordList
                                                                .first
                                                            : null;
                                                    return Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.05,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0x00FFFFFF),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              width: 100,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.05,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x00FFFFFF),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFF662D91),
                                                                ),
                                                              ),
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0, 0),
                                                              child:
                                                                  FlutterFlowDropDown(
                                                                options: formArticlesRecordList
                                                                    .map((e) =>
                                                                        e.nom)
                                                                    .toList()
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        dropDownValue2 =
                                                                            val),
                                                                width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    1,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                hintText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'co91k3wo' /* Please select... */,
                                                                ),
                                                                fillColor:
                                                                    Colors
                                                                        .white,
                                                                elevation: 2,
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderWidth: 0,
                                                                borderRadius: 0,
                                                                margin:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12,
                                                                            4,
                                                                            12,
                                                                            4),
                                                                hidesUnderline:
                                                                    true,
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.18,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.05,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x00FFFFFF),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF662D91),
                                                              ),
                                                            ),
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                            child:
                                                                TextFormField(
                                                              controller:
                                                                  textController3,
                                                              onChanged: (_) =>
                                                                  EasyDebounce
                                                                      .debounce(
                                                                'textController3',
                                                                Duration(
                                                                    milliseconds:
                                                                        2000),
                                                                () => setState(
                                                                    () {}),
                                                              ),
                                                              autofocus: true,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                hintText:
                                                                    containerArticlesRecord
                                                                        .quantite
                                                                        ?.toString(),
                                                                enabledBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1,
                                                                  ),
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            4.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                focusedBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1,
                                                                  ),
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            4.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              keyboardType:
                                                                  TextInputType
                                                                      .number,
                                                              validator: (val) {
                                                                if (val ==
                                                                        null ||
                                                                    val.isEmpty) {
                                                                  return FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'tj3epy3d' /* Field is required */,
                                                                  );
                                                                }

                                                                return null;
                                                              },
                                                            ),
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  ArticleSelectonneRecord>>(
                                                            stream:
                                                                queryArticleSelectonneRecord(
                                                              queryBuilder: (articleSelectonneRecord) => articleSelectonneRecord
                                                                  .where(
                                                                      'nom_article',
                                                                      isEqualTo: dropDownValue2 !=
                                                                              ''
                                                                          ? dropDownValue2
                                                                          : null)
                                                                  .where('code',
                                                                      isEqualTo: FFAppState().CodifBon !=
                                                                              ''
                                                                          ? FFAppState()
                                                                              .CodifBon
                                                                          : null)
                                                                  .where(
                                                                      'nature',
                                                                      isEqualTo:
                                                                          'com'),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<ArticleSelectonneRecord>
                                                                  containerArticleSelectonneRecordList =
                                                                  snapshot.data;
                                                              final containerArticleSelectonneRecord =
                                                                  containerArticleSelectonneRecordList
                                                                          .isNotEmpty
                                                                      ? containerArticleSelectonneRecordList
                                                                          .first
                                                                      : null;
                                                              return Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    0.25,
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.05,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x00FFFFFF),
                                                                ),
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0, 0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    if (formKey2.currentState ==
                                                                            null ||
                                                                        !formKey2
                                                                            .currentState
                                                                            .validate()) {
                                                                      return;
                                                                    }

                                                                    if (dropDownValue2 ==
                                                                        null) {
                                                                      await showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return AlertDialog(
                                                                            content:
                                                                                Text('Aucun article selectionné'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                child: Text('Ok'),
                                                                              ),
                                                                            ],
                                                                          );
                                                                        },
                                                                      );
                                                                      return;
                                                                    }

                                                                    if (FFAppState()
                                                                            .CodifBon !=
                                                                        '\"\"') {
                                                                      if (FFAppState()
                                                                              .CodifBon !=
                                                                          FFAppState()
                                                                              .PreCodifBon) {
                                                                        setState(() =>
                                                                            FFAppState().AddQty =
                                                                                double.parse(textController3.text));
                                                                        if (containerArticlesRecord.quantite >=
                                                                            FFAppState().AddQty) {
                                                                          final articleSelectonneCreateData =
                                                                              createArticleSelectonneRecordData(
                                                                            code:
                                                                                FFAppState().CodifBon,
                                                                            nomArticle:
                                                                                dropDownValue2,
                                                                            quantiteArticle:
                                                                                double.parse(textController3.text),
                                                                            demandeur:
                                                                                currentUserReference,
                                                                            nature:
                                                                                'com',
                                                                          );
                                                                          await ArticleSelectonneRecord
                                                                              .collection
                                                                              .doc()
                                                                              .set(articleSelectonneCreateData);
                                                                          setState(() =>
                                                                              FFAppState().montant = 0.0);
                                                                          setState(() => FFAppState().montant = functions.multiply(
                                                                              FFAppState().montant,
                                                                              FFAppState().AddQty,
                                                                              containerArticlesRecord.prixUnitaire));
                                                                          setState(
                                                                              () {
                                                                            textController1?.clear();
                                                                            textController2?.clear();
                                                                            textController3?.clear();
                                                                          });
                                                                        } else {
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                content: Text('Quantité insuffisante'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
                                                                                    child: Text('Ok'),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
                                                                          );
                                                                        }
                                                                      } else {
                                                                        if (containerArticleSelectonneRecord !=
                                                                            null) {
                                                                          setState(() =>
                                                                              FFAppState().AddQty = double.parse(textController3.text));
                                                                          if (containerArticlesRecord.quantite >=
                                                                              FFAppState().AddQty) {
                                                                            final articleSelectonneUpdateData =
                                                                                {
                                                                              'quantite_article': FieldValue.increment(FFAppState().AddQty),
                                                                            };
                                                                            await containerArticleSelectonneRecord.reference.update(articleSelectonneUpdateData);
                                                                            setState(() => FFAppState().montant = functions.multiply(
                                                                                FFAppState().montant,
                                                                                FFAppState().AddQty,
                                                                                containerArticlesRecord.prixUnitaire));
                                                                            setState(() {
                                                                              textController2?.clear();
                                                                              textController3?.clear();
                                                                              textController1?.clear();
                                                                            });
                                                                          } else {
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  content: Text('Quantité insuffisante'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                      child: Text('Ok'),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            );
                                                                          }
                                                                        } else {
                                                                          setState(() =>
                                                                              FFAppState().AddQty = double.parse(textController3.text));
                                                                          if (containerArticlesRecord.quantite >=
                                                                              FFAppState().AddQty) {
                                                                            final articleSelectonneCreateData =
                                                                                createArticleSelectonneRecordData(
                                                                              code: FFAppState().CodifBon,
                                                                              nomArticle: dropDownValue2,
                                                                              quantiteArticle: double.parse(textController3.text),
                                                                              demandeur: currentUserReference,
                                                                              nature: 'com',
                                                                            );
                                                                            await ArticleSelectonneRecord.collection.doc().set(articleSelectonneCreateData);
                                                                            setState(() => FFAppState().montant = functions.multiply(
                                                                                FFAppState().montant,
                                                                                FFAppState().AddQty,
                                                                                containerArticlesRecord.prixUnitaire));
                                                                            setState(() {
                                                                              textController2?.clear();
                                                                              textController3?.clear();
                                                                              textController1?.clear();
                                                                            });
                                                                          } else {
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  content: Text('Quantité insuffisante'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                      child: Text('Ok'),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            );
                                                                          }
                                                                        }
                                                                      }

                                                                      setState(() => FFAppState()
                                                                              .PreCodifBon =
                                                                          FFAppState()
                                                                              .CodifBon);
                                                                    } else {
                                                                      await showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return AlertDialog(
                                                                            content:
                                                                                Text('code invalide'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                child: Text('Ok'),
                                                                              ),
                                                                            ],
                                                                          );
                                                                        },
                                                                      );
                                                                      setState(() => FFAppState()
                                                                              .PreCodifBon =
                                                                          FFAppState()
                                                                              .CodifBon);
                                                                    }
                                                                  },
                                                                  text: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '2qfecgkr' /* Add */,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: 130,
                                                                    height: 40,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              );
                                            },
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 10, 0, 0),
                                              child: StreamBuilder<
                                                  List<
                                                      ArticleSelectonneRecord>>(
                                                stream:
                                                    queryArticleSelectonneRecord(
                                                  queryBuilder: (articleSelectonneRecord) =>
                                                      articleSelectonneRecord
                                                          .where('code',
                                                              isEqualTo: FFAppState()
                                                                          .CodifBon !=
                                                                      ''
                                                                  ? FFAppState()
                                                                      .CodifBon
                                                                  : null)
                                                          .where('nature',
                                                              isEqualTo: 'com'),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<ArticleSelectonneRecord>
                                                      columnArticleSelectonneRecordList =
                                                      snapshot.data;
                                                  return SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
                                                      children: List.generate(
                                                          columnArticleSelectonneRecordList
                                                              .length,
                                                          (columnIndex) {
                                                        final columnArticleSelectonneRecord =
                                                            columnArticleSelectonneRecordList[
                                                                columnIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      5, 0, 0),
                                                          child: Badge(
                                                            badgeContent: Text(
                                                              columnArticleSelectonneRecord
                                                                  .quantiteArticle
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                            showBadge: true,
                                                            shape: BadgeShape
                                                                .circle,
                                                            badgeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                            elevation: 4,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        8,
                                                                        8,
                                                                        8),
                                                            position:
                                                                BadgePosition
                                                                    .topEnd(),
                                                            animationType:
                                                                BadgeAnimationType
                                                                    .scale,
                                                            toAnimate: true,
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1, 0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            15,
                                                                            0,
                                                                            0),
                                                                child: Text(
                                                                  columnArticleSelectonneRecord
                                                                      .nomArticle,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                          StreamBuilder<List<DateEnvoyeRecord>>(
                                            stream: queryDateEnvoyeRecord(
                                              queryBuilder: (dateEnvoyeRecord) =>
                                                  dateEnvoyeRecord
                                                      .where(
                                                          'date',
                                                          isEqualTo: dateTimeFormat(
                                                                      'yMMMd',
                                                                      getCurrentTimestamp) !=
                                                                  ''
                                                              ? dateTimeFormat(
                                                                  'yMMMd',
                                                                  getCurrentTimestamp)
                                                              : null)
                                                      .where('nature',
                                                          isEqualTo: 'com')
                                                      .where('index',
                                                          isEqualTo: 1),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<DateEnvoyeRecord>
                                                  columnDateEnvoyeRecordList =
                                                  snapshot.data;
                                              final columnDateEnvoyeRecord =
                                                  columnDateEnvoyeRecordList
                                                          .isNotEmpty
                                                      ? columnDateEnvoyeRecordList
                                                          .first
                                                      : null;
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  StreamBuilder<
                                                      List<BonEnAttenteRecord>>(
                                                    stream:
                                                        queryBonEnAttenteRecord(
                                                      queryBuilder: (bonEnAttenteRecord) =>
                                                          bonEnAttenteRecord
                                                              .where(
                                                                  'code',
                                                                  isEqualTo: FFAppState()
                                                                              .CodifBon !=
                                                                          ''
                                                                      ? FFAppState()
                                                                          .CodifBon
                                                                      : null)
                                                              .where(
                                                                  'nature',
                                                                  isEqualTo:
                                                                      'com'),
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50,
                                                            height: 50,
                                                            child:
                                                                CircularProgressIndicator(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<BonEnAttenteRecord>
                                                          rowBonEnAttenteRecordList =
                                                          snapshot.data;
                                                      final rowBonEnAttenteRecord =
                                                          rowBonEnAttenteRecordList
                                                                  .isNotEmpty
                                                              ? rowBonEnAttenteRecordList
                                                                  .first
                                                              : null;
                                                      return Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          StreamBuilder<
                                                              List<
                                                                  ArticleSelectonneRecord>>(
                                                            stream:
                                                                queryArticleSelectonneRecord(
                                                              queryBuilder: (articleSelectonneRecord) => articleSelectonneRecord
                                                                  .where('code',
                                                                      isEqualTo: FFAppState().CodifBon !=
                                                                              ''
                                                                          ? FFAppState()
                                                                              .CodifBon
                                                                          : null)
                                                                  .where(
                                                                      'nature',
                                                                      isEqualTo:
                                                                          'com'),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<ArticleSelectonneRecord>
                                                                  iconButtonArticleSelectonneRecordList =
                                                                  snapshot.data;
                                                              final iconButtonArticleSelectonneRecord =
                                                                  iconButtonArticleSelectonneRecordList
                                                                          .isNotEmpty
                                                                      ? iconButtonArticleSelectonneRecordList
                                                                          .first
                                                                      : null;
                                                              return FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    30,
                                                                borderWidth: 1,
                                                                buttonSize: 50,
                                                                icon: Icon(
                                                                  Icons.delete,
                                                                  color: Color(
                                                                      0xFF662D91),
                                                                  size: 30,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  var confirmDialogResponse =
                                                                      await showDialog<
                                                                              bool>(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                content: Text('Voulez-vous vraiment supprimer ce bon?'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                    child: Text('NON'),
                                                                                  ),
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                    child: Text('OUI'),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
                                                                          ) ??
                                                                          false;
                                                                  if (confirmDialogResponse) {
                                                                    setState(
                                                                        () {
                                                                      textController2
                                                                          ?.clear();
                                                                      textController3
                                                                          ?.clear();
                                                                      textController1
                                                                          ?.clear();
                                                                    });
                                                                    setState(() =>
                                                                        FFAppState().CodifBon =
                                                                            '\"\"');
                                                                    await rowBonEnAttenteRecord
                                                                        .reference
                                                                        .delete();
                                                                    if (containerBonEnAttenteRecordList
                                                                            .length <=
                                                                        1) {
                                                                      await stackDateEnAttenteRecord
                                                                          .reference
                                                                          .delete();
                                                                    }
                                                                    context
                                                                        .pop();
                                                                  }
                                                                },
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  ArticleSelectonneRecord>>(
                                                            stream:
                                                                queryArticleSelectonneRecord(
                                                              queryBuilder: (articleSelectonneRecord) => articleSelectonneRecord
                                                                  .where('code',
                                                                      isEqualTo: FFAppState().CodifBon !=
                                                                              ''
                                                                          ? FFAppState()
                                                                              .CodifBon
                                                                          : null)
                                                                  .where(
                                                                      'nature',
                                                                      isEqualTo:
                                                                          'com'),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<ArticleSelectonneRecord>
                                                                  iconButtonArticleSelectonneRecordList =
                                                                  snapshot.data;
                                                              final iconButtonArticleSelectonneRecord =
                                                                  iconButtonArticleSelectonneRecordList
                                                                          .isNotEmpty
                                                                      ? iconButtonArticleSelectonneRecordList
                                                                          .first
                                                                      : null;
                                                              return FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    30,
                                                                borderWidth: 1,
                                                                buttonSize: 50,
                                                                icon: Icon(
                                                                  Icons
                                                                      .save_sharp,
                                                                  color: Color(
                                                                      0xFF662D91),
                                                                  size: 30,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  if (formKey1.currentState ==
                                                                          null ||
                                                                      !formKey1
                                                                          .currentState
                                                                          .validate()) {
                                                                    return;
                                                                  }

                                                                  if (dropDownValue1 ==
                                                                      null) {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          content:
                                                                              Text('Quel est le niveau de priorité de votre bon?'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    );
                                                                    return;
                                                                  }

                                                                  if (userInterface1BonattenteArticleSelectonneRecordList
                                                                          .length >
                                                                      0) {
                                                                    if (rowBonEnAttenteRecord !=
                                                                        null) {
                                                                      final bonEnAttenteUpdateData =
                                                                          {
                                                                        ...createBonEnAttenteRecordData(
                                                                          nom: textController2
                                                                              .text,
                                                                          priorite:
                                                                              dropDownValue1,
                                                                          date: dateTimeFormat(
                                                                              'yMMMd',
                                                                              getCurrentTimestamp),
                                                                          heure: dateTimeFormat(
                                                                              'Hm',
                                                                              getCurrentTimestamp),
                                                                          code:
                                                                              FFAppState().CodifBon,
                                                                        ),
                                                                        'liste_articles': userInterface1BonattenteArticleSelectonneRecordList
                                                                            .map((e) =>
                                                                                e.reference)
                                                                            .toList(),
                                                                      };
                                                                      await rowBonEnAttenteRecord
                                                                          .reference
                                                                          .update(
                                                                              bonEnAttenteUpdateData);
                                                                    } else {
                                                                      final bonEnAttenteCreateData =
                                                                          {
                                                                        ...createBonEnAttenteRecordData(
                                                                          nom: textController2
                                                                              .text,
                                                                          code:
                                                                              FFAppState().CodifBon,
                                                                          statut:
                                                                              00,
                                                                          priorite:
                                                                              dropDownValue1,
                                                                          date: dateTimeFormat(
                                                                              'yMMMd',
                                                                              getCurrentTimestamp),
                                                                          heure: dateTimeFormat(
                                                                              'Hm',
                                                                              getCurrentTimestamp),
                                                                          demandeur:
                                                                              currentUserReference,
                                                                          nature:
                                                                              'com',
                                                                        ),
                                                                        'liste_articles': userInterface1BonattenteArticleSelectonneRecordList
                                                                            .map((e) =>
                                                                                e.reference)
                                                                            .toList(),
                                                                      };
                                                                      await BonEnAttenteRecord
                                                                          .collection
                                                                          .doc()
                                                                          .set(
                                                                              bonEnAttenteCreateData);
                                                                    }

                                                                    setState(() => FFAppState()
                                                                            .DateEnAttente =
                                                                        dateTimeFormat(
                                                                            'yMMMd',
                                                                            getCurrentTimestamp));
                                                                    if (stackDateEnAttenteRecord !=
                                                                        null) {
                                                                      final dateEnAttenteUpdateData =
                                                                          createDateEnAttenteRecordData(
                                                                        date: dateTimeFormat(
                                                                            'yMMMd',
                                                                            getCurrentTimestamp),
                                                                      );
                                                                      await stackDateEnAttenteRecord
                                                                          .reference
                                                                          .update(
                                                                              dateEnAttenteUpdateData);
                                                                    } else {
                                                                      final dateEnAttenteCreateData =
                                                                          createDateEnAttenteRecordData(
                                                                        date: FFAppState()
                                                                            .DateEnAttente,
                                                                        demandeur:
                                                                            currentUserReference,
                                                                        nature:
                                                                            'com',
                                                                      );
                                                                      await DateEnAttenteRecord
                                                                          .collection
                                                                          .doc()
                                                                          .set(
                                                                              dateEnAttenteCreateData);
                                                                    }

                                                                    setState(() => FFAppState()
                                                                            .PreDateEnAttente =
                                                                        FFAppState()
                                                                            .DateEnAttente);
                                                                    setState(
                                                                        () {
                                                                      textController1
                                                                          ?.clear();
                                                                      textController2
                                                                          ?.clear();
                                                                      textController3
                                                                          ?.clear();
                                                                    });
                                                                    setState(() =>
                                                                        FFAppState().CodifBon =
                                                                            '\"\"');
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          content:
                                                                              Text('aucun article sélectionné'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    );
                                                                  }

                                                                  context.pop();
                                                                },
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  ArticleSelectonneRecord>>(
                                                            stream:
                                                                queryArticleSelectonneRecord(
                                                              queryBuilder: (articleSelectonneRecord) => articleSelectonneRecord
                                                                  .where('code',
                                                                      isEqualTo: FFAppState().CodifBon !=
                                                                              ''
                                                                          ? FFAppState()
                                                                              .CodifBon
                                                                          : null)
                                                                  .where(
                                                                      'nature',
                                                                      isEqualTo:
                                                                          'com'),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<ArticleSelectonneRecord>
                                                                  iconButtonArticleSelectonneRecordList =
                                                                  snapshot.data;
                                                              return FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    30,
                                                                borderWidth: 1,
                                                                buttonSize: 50,
                                                                icon: Icon(
                                                                  Icons.send,
                                                                  color: Color(
                                                                      0xFF662D91),
                                                                  size: 30,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  if (formKey1.currentState ==
                                                                          null ||
                                                                      !formKey1
                                                                          .currentState
                                                                          .validate()) {
                                                                    return;
                                                                  }

                                                                  if (dropDownValue1 ==
                                                                      null) {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          content:
                                                                              Text('Quel est le niveau de priorité de votre bon?'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    );
                                                                    return;
                                                                  }

                                                                  if (iconButtonArticleSelectonneRecordList
                                                                          .length >
                                                                      0) {
                                                                    final bonEnvoyeCreateData =
                                                                        createBonEnvoyeRecordData(
                                                                      nom: textController2
                                                                          .text,
                                                                      code: FFAppState()
                                                                          .CodifBon,
                                                                      statut:
                                                                          '70',
                                                                      priorite:
                                                                          dropDownValue1,
                                                                      heure: dateTimeFormat(
                                                                          'Hm',
                                                                          getCurrentTimestamp),
                                                                      cout: FFAppState()
                                                                          .montant,
                                                                      demandeur:
                                                                          currentUserReference,
                                                                      date: dateTimeFormat(
                                                                          'yMMMd',
                                                                          getCurrentTimestamp),
                                                                      intituleStatut:
                                                                          'en cours de traitement ',
                                                                      jour: dateTimeFormat(
                                                                          'EEEE',
                                                                          getCurrentTimestamp),
                                                                      annee: dateTimeFormat(
                                                                          'yQQQ',
                                                                          getCurrentTimestamp),
                                                                      nature:
                                                                          'com',
                                                                    );
                                                                    await BonEnvoyeRecord
                                                                        .collection
                                                                        .doc()
                                                                        .set(
                                                                            bonEnvoyeCreateData);
                                                                    setState(() => FFAppState()
                                                                            .DateEnvoye =
                                                                        dateTimeFormat(
                                                                            'yMMMd',
                                                                            getCurrentTimestamp));
                                                                    if (containerDateEnvoyeRecord !=
                                                                        null) {
                                                                      final dateEnvoyeUpdateData =
                                                                          {
                                                                        'bonCree':
                                                                            FieldValue.increment(1.0),
                                                                        'coutCree':
                                                                            FieldValue.increment(FFAppState().montant),
                                                                      };
                                                                      await containerDateEnvoyeRecord
                                                                          .reference
                                                                          .update(
                                                                              dateEnvoyeUpdateData);
                                                                    } else {
                                                                      if (columnDateEnvoyeRecord !=
                                                                          null) {
                                                                        final dateEnvoyeCreateData =
                                                                            createDateEnvoyeRecordData(
                                                                          demandeur:
                                                                              currentUserReference,
                                                                          bonCree:
                                                                              1.0,
                                                                          coutCree:
                                                                              FFAppState().montant,
                                                                          nature:
                                                                              'com',
                                                                          dateFiltre:
                                                                              getCurrentTimestamp,
                                                                          date: dateTimeFormat(
                                                                              'yMMMd',
                                                                              getCurrentTimestamp),
                                                                          index:
                                                                              0,
                                                                        );
                                                                        await DateEnvoyeRecord
                                                                            .collection
                                                                            .doc()
                                                                            .set(dateEnvoyeCreateData);
                                                                      } else {
                                                                        final dateEnvoyeCreateData =
                                                                            createDateEnvoyeRecordData(
                                                                          demandeur:
                                                                              currentUserReference,
                                                                          bonCree:
                                                                              1.0,
                                                                          coutCree:
                                                                              FFAppState().montant,
                                                                          nature:
                                                                              'com',
                                                                          dateFiltre:
                                                                              getCurrentTimestamp,
                                                                          date: dateTimeFormat(
                                                                              'yMMMd',
                                                                              getCurrentTimestamp),
                                                                          index:
                                                                              1,
                                                                        );
                                                                        await DateEnvoyeRecord
                                                                            .collection
                                                                            .doc()
                                                                            .set(dateEnvoyeCreateData);
                                                                      }
                                                                    }

                                                                    if (columnDateEnTraitementRecord !=
                                                                        null) {
                                                                      final dateEnTraitementUpdateData =
                                                                          {
                                                                        'coutEncours':
                                                                            FieldValue.increment(FFAppState().montant),
                                                                        'bonEncours':
                                                                            FieldValue.increment(1.0),
                                                                      };
                                                                      await columnDateEnTraitementRecord
                                                                          .reference
                                                                          .update(
                                                                              dateEnTraitementUpdateData);
                                                                    } else {
                                                                      final dateEnTraitementCreateData =
                                                                          createDateEnTraitementRecordData(
                                                                        date: FFAppState()
                                                                            .DateEnvoye,
                                                                        demandeur:
                                                                            currentUserReference,
                                                                        bonEncours:
                                                                            1.0,
                                                                        coutEncours:
                                                                            FFAppState().montant,
                                                                        nature:
                                                                            'com',
                                                                      );
                                                                      await DateEnTraitementRecord
                                                                          .collection
                                                                          .doc()
                                                                          .set(
                                                                              dateEnTraitementCreateData);
                                                                    }

                                                                    setState(() => FFAppState()
                                                                            .PreDateEnvoye =
                                                                        FFAppState()
                                                                            .DateEnvoye);
                                                                    setState(
                                                                        () {
                                                                      textController1
                                                                          ?.clear();
                                                                      textController2
                                                                          ?.clear();
                                                                      textController3
                                                                          ?.clear();
                                                                    });
                                                                    setState(() =>
                                                                        FFAppState().CodifBon =
                                                                            '\"\"');
                                                                    await rowBonEnAttenteRecord
                                                                        .reference
                                                                        .delete();
                                                                    if (containerBonEnAttenteRecordList
                                                                            .length <=
                                                                        1) {
                                                                      await stackDateEnAttenteRecord
                                                                          .reference
                                                                          .delete();
                                                                    }
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          content:
                                                                              Text('aucun article sélectionné'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    );
                                                                  }

                                                                  context.pop();
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
