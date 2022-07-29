import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInterface3StatWidget extends StatefulWidget {
  const UserInterface3StatWidget({Key key}) : super(key: key);

  @override
  _UserInterface3StatWidgetState createState() =>
      _UserInterface3StatWidgetState();
}

class _UserInterface3StatWidgetState extends State<UserInterface3StatWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF662D91),
        automaticallyImplyLeading: true,
        title: Text(
          FFLocalizations.of(context).getText(
            '54cieuxf' /* STOCKApp */,
          ),
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: FaIcon(
              FontAwesomeIcons.search,
              color: Colors.white,
              size: 20,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
        ],
        centerTitle: false,
        elevation: 10,
      ),
      backgroundColor: Colors.white,
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Drawer(
          elevation: 16,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                  color: Color(0xFF662D91),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.transparent,
                    )
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AuthUserStreamWidget(
                      child: AutoSizeText(
                        valueOrDefault(currentUserDocument?.nom, ''),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF00FF00),
                              fontSize: 35,
                            ),
                      ),
                    ),
                    AuthUserStreamWidget(
                      child: Text(
                        valueOrDefault(currentUserDocument?.fonction, ''),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      InkWell(
                        onTap: () async {
                          if (valueOrDefault(
                                  currentUserDocument?.fonction, '') ==
                              'directeur général') {
                            context.pushNamed('user_interface2_bon');
                          } else {
                            if (valueOrDefault(
                                    currentUserDocument?.fonction, '') ==
                                'magasinier') {
                              context.pushNamed('user_interface3_bon');
                            } else {
                              context.pushNamed('user_interface1_bon');
                            }
                          }
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.book,
                            color: Colors.black,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'nju6spst' /* BONS */,
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                          ),
                          tileColor: Colors.white,
                          dense: false,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          if (valueOrDefault(
                                  currentUserDocument?.fonction, '') ==
                              'directeur général') {
                            context.pushNamed('user_interface1_art');
                          } else {
                            if (valueOrDefault(
                                    currentUserDocument?.fonction, '') ==
                                'magasinier') {
                              context.pushNamed('user_interface3_art');
                            } else {
                              context.pushNamed('user_interface1_art');
                            }
                          }
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.construction,
                            color: Colors.black,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'k34lxipx' /* ARTICLES */,
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                          ),
                          tileColor: Colors.white,
                          dense: false,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'user_interface3_stat',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.assessment,
                            color: Colors.black,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'tp6ukhrl' /* STATISTIQUES */,
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                          ),
                          tileColor: Color(0xFF00FF00),
                          dense: false,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'user_interface1_para',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.settings,
                            color: Colors.black,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'xdp7dv46' /* PARAMETRES */,
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                          ),
                          tileColor: Colors.white,
                          dense: false,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          GoRouter.of(context).prepareAuthEvent();
                          await signOut();
                          context.pushNamedAuth('check_password', mounted);
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              '2vty6upy' /* DECONNEXION */,
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                          ),
                          tileColor: Colors.white,
                          dense: false,
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
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: DefaultTabController(
                length: 3,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Color(0xFF630460),
                      unselectedLabelColor: Color(0xFF818181),
                      labelStyle: GoogleFonts.getFont(
                        'Roboto',
                      ),
                      indicatorColor: Color(0xFF630460),
                      indicatorWeight: 5,
                      tabs: [
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            'hk3jfism' /* Ordered */,
                          ),
                        ),
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            'bvrcjq1r' /* Supply */,
                          ),
                        ),
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            'cymeclqn' /* Store return */,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  StreamBuilder<List<BonEnvoyeRecord>>(
                                    stream: queryBonEnvoyeRecord(
                                      queryBuilder: (bonEnvoyeRecord) =>
                                          bonEnvoyeRecord
                                              .where('clotureur',
                                                  isEqualTo:
                                                      currentUserReference)
                                              .where('date_clotureur',
                                                  isEqualTo: dateTimeFormat(
                                                              'yMMMd',
                                                              getCurrentTimestamp) !=
                                                          ''
                                                      ? dateTimeFormat('yMMMd',
                                                          getCurrentTimestamp)
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
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<BonEnvoyeRecord>
                                          containerBonEnvoyeRecordList =
                                          snapshot.data;
                                      return Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              containerBonEnvoyeRecordList
                                                  .length
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF662D91),
                                                        fontSize: 50,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 30),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'zxt2mmx9' /* closed */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF662D91),
                                                          fontSize: 17,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                                child: StreamBuilder<
                                    List<DateEnvoyeClotureurRecord>>(
                                  stream: queryDateEnvoyeClotureurRecord(
                                    queryBuilder: (dateEnvoyeClotureurRecord) =>
                                        dateEnvoyeClotureurRecord
                                            .where('date',
                                                isEqualTo: dateTimeFormat(
                                                            'yMMMd',
                                                            getCurrentTimestamp) !=
                                                        ''
                                                    ? dateTimeFormat('yMMMd',
                                                        getCurrentTimestamp)
                                                    : null)
                                            .where('clotureur',
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
                                    List<DateEnvoyeClotureurRecord>
                                        containerDateEnvoyeClotureurRecordList =
                                        snapshot.data;
                                    final containerDateEnvoyeClotureurRecord =
                                        containerDateEnvoyeClotureurRecordList
                                                .isNotEmpty
                                            ? containerDateEnvoyeClotureurRecordList
                                                .first
                                            : null;
                                    return Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF03160C),
                                      ),
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (!(containerDateEnvoyeClotureurRecord !=
                                              null))
                                            Text(
                                              '0 FCFA',
                                              maxLines: 1,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          if ((containerDateEnvoyeClotureurRecord !=
                                              null))
                                            Text(
                                              '${containerDateEnvoyeClotureurRecord.coutCloture?.toString()} FCFA',
                                              maxLines: 1,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: StreamBuilder<
                                    List<DateEnvoyeClotureurRecord>>(
                                  stream: queryDateEnvoyeClotureurRecord(
                                    queryBuilder: (dateEnvoyeClotureurRecord) =>
                                        dateEnvoyeClotureurRecord
                                            .where('clotureur',
                                                isEqualTo: currentUserReference)
                                            .orderBy('date'),
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
                                    List<DateEnvoyeClotureurRecord>
                                        containerDateEnvoyeClotureurRecordList =
                                        snapshot.data;
                                    return Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 0, 0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              FutureBuilder<ApiCallResponse>(
                                                future: GraphStatCall.call(
                                                  abscisse: functions.listDesX3(
                                                      containerDateEnvoyeClotureurRecordList
                                                          .toList()),
                                                  ordonnee1: functions.listDesY3(
                                                      containerDateEnvoyeClotureurRecordList
                                                          .toList()),
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
                                                  final containerGraphStatResponse =
                                                      snapshot.data;
                                                  return Container(
                                                    width: 300,
                                                    height: 300,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.network(
                                                          getJsonField(
                                                            containerGraphStatResponse
                                                                .jsonBody,
                                                            r'''$.url''',
                                                          ),
                                                        ).image,
                                                      ),
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  StreamBuilder<List<BonEnvoyeRecord>>(
                                    stream: queryBonEnvoyeRecord(
                                      queryBuilder: (bonEnvoyeRecord) =>
                                          bonEnvoyeRecord
                                              .where('demandeur',
                                                  isEqualTo:
                                                      currentUserReference)
                                              .where('date_clotureur',
                                                  isEqualTo: dateTimeFormat(
                                                              'yMMMd',
                                                              getCurrentTimestamp) !=
                                                          ''
                                                      ? dateTimeFormat('yMMMd',
                                                          getCurrentTimestamp)
                                                      : null)
                                              .where('type',
                                                  isEqualTo: 'Externe'),
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
                                      List<BonEnvoyeRecord>
                                          containerBonEnvoyeRecordList =
                                          snapshot.data;
                                      return Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              containerBonEnvoyeRecordList
                                                  .length
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF662D91),
                                                        fontSize: 50,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 30),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'nawjvyck' /* created */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF662D91),
                                                          fontSize: 17,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                                child: StreamBuilder<List<DateEnvoyeAppRecord>>(
                                  stream: queryDateEnvoyeAppRecord(
                                    queryBuilder: (dateEnvoyeAppRecord) =>
                                        dateEnvoyeAppRecord
                                            .where('demandeur',
                                                isEqualTo: currentUserReference)
                                            .where('date',
                                                isEqualTo: dateTimeFormat(
                                                            'yMMMd',
                                                            getCurrentTimestamp) !=
                                                        ''
                                                    ? dateTimeFormat('yMMMd',
                                                        getCurrentTimestamp)
                                                    : null)
                                            .where('type',
                                                isEqualTo: 'Externe'),
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
                                    List<DateEnvoyeAppRecord>
                                        containerDateEnvoyeAppRecordList =
                                        snapshot.data;
                                    final containerDateEnvoyeAppRecord =
                                        containerDateEnvoyeAppRecordList
                                                .isNotEmpty
                                            ? containerDateEnvoyeAppRecordList
                                                .first
                                            : null;
                                    return Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF03160C),
                                      ),
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (!(containerDateEnvoyeAppRecord !=
                                              null))
                                            Text(
                                              '0 FCFA',
                                              maxLines: 1,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          if ((containerDateEnvoyeAppRecord !=
                                              null))
                                            Text(
                                              '${containerDateEnvoyeAppRecord.coutCree?.toString()} FCFA',
                                              maxLines: 1,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: StreamBuilder<List<DateEnvoyeAppRecord>>(
                                  stream: queryDateEnvoyeAppRecord(
                                    queryBuilder: (dateEnvoyeAppRecord) =>
                                        dateEnvoyeAppRecord
                                            .where('demandeur',
                                                isEqualTo: currentUserReference)
                                            .where('type', isEqualTo: 'Externe')
                                            .orderBy('date'),
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
                                    List<DateEnvoyeAppRecord>
                                        containerDateEnvoyeAppRecordList =
                                        snapshot.data;
                                    return Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FutureBuilder<ApiCallResponse>(
                                              future: GraphStatCall.call(
                                                abscisse: functions.listDesX33(
                                                    containerDateEnvoyeAppRecordList
                                                        .toList()),
                                                ordonnee1: functions.listDesY33(
                                                    containerDateEnvoyeAppRecordList
                                                        .toList()),
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
                                                final containerGraphStatResponse =
                                                    snapshot.data;
                                                return Container(
                                                  width: 300,
                                                  height: 300,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.network(
                                                        getJsonField(
                                                          containerGraphStatResponse
                                                              .jsonBody,
                                                          r'''$.url''',
                                                        ),
                                                      ).image,
                                                    ),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  StreamBuilder<List<BonEnvoyeRecord>>(
                                    stream: queryBonEnvoyeRecord(
                                      queryBuilder: (bonEnvoyeRecord) =>
                                          bonEnvoyeRecord
                                              .where('demandeur',
                                                  isEqualTo:
                                                      currentUserReference)
                                              .where('date_clotureur',
                                                  isEqualTo: dateTimeFormat(
                                                              'yMMMd',
                                                              getCurrentTimestamp) !=
                                                          ''
                                                      ? dateTimeFormat('yMMMd',
                                                          getCurrentTimestamp)
                                                      : null)
                                              .where('type',
                                                  isEqualTo: 'Retour magasin'),
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
                                      List<BonEnvoyeRecord>
                                          containerBonEnvoyeRecordList =
                                          snapshot.data;
                                      return Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              containerBonEnvoyeRecordList
                                                  .length
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF662D91),
                                                        fontSize: 50,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 30),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'v5zuerii' /* created */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF662D91),
                                                          fontSize: 17,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                                child: StreamBuilder<List<DateEnvoyeAppRecord>>(
                                  stream: queryDateEnvoyeAppRecord(
                                    queryBuilder: (dateEnvoyeAppRecord) =>
                                        dateEnvoyeAppRecord
                                            .where('demandeur',
                                                isEqualTo: currentUserReference)
                                            .where('date',
                                                isEqualTo: dateTimeFormat(
                                                            'yMMMd',
                                                            getCurrentTimestamp) !=
                                                        ''
                                                    ? dateTimeFormat('yMMMd',
                                                        getCurrentTimestamp)
                                                    : null)
                                            .where('type',
                                                isEqualTo: 'Retour magasin'),
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
                                    List<DateEnvoyeAppRecord>
                                        containerDateEnvoyeAppRecordList =
                                        snapshot.data;
                                    final containerDateEnvoyeAppRecord =
                                        containerDateEnvoyeAppRecordList
                                                .isNotEmpty
                                            ? containerDateEnvoyeAppRecordList
                                                .first
                                            : null;
                                    return Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF03160C),
                                      ),
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (!(containerDateEnvoyeAppRecord !=
                                              null))
                                            Text(
                                              '0 FCFA',
                                              maxLines: 1,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          if ((containerDateEnvoyeAppRecord !=
                                              null))
                                            Text(
                                              '${containerDateEnvoyeAppRecord.coutCree?.toString()} FCFA',
                                              maxLines: 1,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: StreamBuilder<List<DateEnvoyeAppRecord>>(
                                  stream: queryDateEnvoyeAppRecord(
                                    queryBuilder: (dateEnvoyeAppRecord) =>
                                        dateEnvoyeAppRecord
                                            .where('demandeur',
                                                isEqualTo: currentUserReference)
                                            .where('type',
                                                isEqualTo: 'Retour magasin')
                                            .orderBy('date'),
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
                                    List<DateEnvoyeAppRecord>
                                        containerDateEnvoyeAppRecordList =
                                        snapshot.data;
                                    return Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FutureBuilder<ApiCallResponse>(
                                              future: GraphStatCall.call(
                                                abscisse: functions.listDesX33(
                                                    containerDateEnvoyeAppRecordList
                                                        .toList()),
                                                ordonnee1: functions.listDesY33(
                                                    containerDateEnvoyeAppRecordList
                                                        .toList()),
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
                                                final containerGraphStatResponse =
                                                    snapshot.data;
                                                return Container(
                                                  width: 300,
                                                  height: 300,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.network(
                                                        getJsonField(
                                                          containerGraphStatResponse
                                                              .jsonBody,
                                                          r'''$.url''',
                                                        ),
                                                      ).image,
                                                    ),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
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
          ],
        ),
      ),
    );
  }
}
