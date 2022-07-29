import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class UserInterface2StatWidget extends StatefulWidget {
  const UserInterface2StatWidget({Key key}) : super(key: key);

  @override
  _UserInterface2StatWidgetState createState() =>
      _UserInterface2StatWidgetState();
}

class _UserInterface2StatWidgetState extends State<UserInterface2StatWidget> {
  PageController pageViewController;
  String choiceChipsValue1;
  String choiceChipsValue2;
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
            'sk2hw3np' /* STOCKApp */,
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
                              'yodon1zt' /* BONS */,
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
                              '80ve3a2c' /* ARTICLES */,
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
                            'user_interface2_stat',
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
                              'blipu4cw' /* STATISTIQUES */,
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
                              'byf55kap' /* PARAMETRES */,
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
                              '0dsio4bu' /* DECONNEXION */,
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
            StreamBuilder<List<BonEnvoyeRecord>>(
              stream: queryBonEnvoyeRecord(
                queryBuilder: (bonEnvoyeRecord) => bonEnvoyeRecord
                    .where('date_valideur',
                        isEqualTo:
                            dateTimeFormat('yMMMd', getCurrentTimestamp) != ''
                                ? dateTimeFormat('yMMMd', getCurrentTimestamp)
                                : null)
                    .where('statut', whereIn: ["50", "80"])
                    .where('valideur', isEqualTo: currentUserReference)
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
                List<BonEnvoyeRecord> tabBarBonEnvoyeRecordList = snapshot.data;
                return DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: Color(0xFF630460),
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                ),
                        indicatorColor: Color(0xFF630460),
                        indicatorWeight: 5,
                        tabs: [
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              'nlsnbp4p' /* Ordered */,
                            ),
                          ),
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              '7hjqib26' /* Supply */,
                            ),
                          ),
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              '9l5ue62n' /* Store return */,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    StreamBuilder<List<BonEnvoyeRecord>>(
                                      stream: queryBonEnvoyeRecord(
                                        queryBuilder: (bonEnvoyeRecord) =>
                                            bonEnvoyeRecord
                                                .where('statut',
                                                    isEqualTo: '80')
                                                .where('date_clotureur',
                                                    isEqualTo: dateTimeFormat(
                                                                'yMMMd',
                                                                getCurrentTimestamp) !=
                                                            ''
                                                        ? dateTimeFormat(
                                                            'yMMMd',
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
                                                              Color(0xFF00FF00),
                                                          fontSize: 50,
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 30),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'oai7hvzn' /* closed */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF00FF00),
                                                        fontSize: 17,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                    StreamBuilder<List<BonEnvoyeRecord>>(
                                      stream: queryBonEnvoyeRecord(
                                        queryBuilder: (bonEnvoyeRecord) =>
                                            bonEnvoyeRecord
                                                .where('statut',
                                                    whereIn: ["50", "80"])
                                                .where('date_valideur',
                                                    isEqualTo: dateTimeFormat(
                                                                'yMMMd',
                                                                getCurrentTimestamp) !=
                                                            ''
                                                        ? dateTimeFormat(
                                                            'yMMMd',
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
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '${tabBarBonEnvoyeRecordList.length.toString()}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF630460),
                                                          fontSize: 25,
                                                        ),
                                                  ),
                                                  Text(
                                                    '/${containerBonEnvoyeRecordList.length.toString()}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF630460),
                                                          fontSize: 50,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 30),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'y4l7fh95' /* valided */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF630460),
                                                        fontSize: 17,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                    StreamBuilder<List<BonEnvoyeRecord>>(
                                      stream: queryBonEnvoyeRecord(
                                        queryBuilder: (bonEnvoyeRecord) =>
                                            bonEnvoyeRecord
                                                .where('statut',
                                                    isEqualTo: '90')
                                                .where('date_valideur',
                                                    isEqualTo: dateTimeFormat(
                                                                'yMMMd',
                                                                getCurrentTimestamp) !=
                                                            ''
                                                        ? dateTimeFormat(
                                                            'yMMMd',
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
                                                              Color(0xFFFF0000),
                                                          fontSize: 50,
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 30),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'hlckpsy8' /* rejected */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFFF0000),
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2, 2, 2, 2),
                                  child: StreamBuilder<List<BonEnvoyeRecord>>(
                                    stream: queryBonEnvoyeRecord(
                                      queryBuilder: (bonEnvoyeRecord) =>
                                          bonEnvoyeRecord
                                              .where('date_clotureur',
                                                  isEqualTo: dateTimeFormat(
                                                              'yMMMd',
                                                              getCurrentTimestamp) !=
                                                          ''
                                                      ? dateTimeFormat('yMMMd',
                                                          getCurrentTimestamp)
                                                      : null)
                                              .where('statut', isEqualTo: '80')
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
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF03160C),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          '${functions.sommeliste(containerBonEnvoyeRecordList.toList()).toString()} FCFA',
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    StreamBuilder<List<BonEnvoyeRecord>>(
                                      stream: queryBonEnvoyeRecord(
                                        queryBuilder: (bonEnvoyeRecord) =>
                                            bonEnvoyeRecord
                                                .where('statut',
                                                    isEqualTo: '80')
                                                .where('date_clotureur',
                                                    isEqualTo: dateTimeFormat(
                                                                'yMMMd',
                                                                getCurrentTimestamp) !=
                                                            ''
                                                        ? dateTimeFormat(
                                                            'yMMMd',
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
                                                              Color(0xFF00FF00),
                                                          fontSize: 50,
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 30),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'qbe7i5ux' /* closed */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF00FF00),
                                                        fontSize: 17,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                    StreamBuilder<List<BonEnvoyeRecord>>(
                                      stream: queryBonEnvoyeRecord(
                                        queryBuilder: (bonEnvoyeRecord) =>
                                            bonEnvoyeRecord
                                                .where('statut', whereIn: [
                                                  "50",
                                                  "80"
                                                ])
                                                .where(
                                                    'date_valideur',
                                                    isEqualTo: dateTimeFormat(
                                                                'yMMMd',
                                                                getCurrentTimestamp) !=
                                                            ''
                                                        ? dateTimeFormat(
                                                            'yMMMd',
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
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  StreamBuilder<
                                                      List<BonEnvoyeRecord>>(
                                                    stream:
                                                        queryBonEnvoyeRecord(
                                                      queryBuilder: (bonEnvoyeRecord) => bonEnvoyeRecord
                                                          .where(
                                                              'date_valideur',
                                                              isEqualTo: dateTimeFormat(
                                                                          'yMMMd',
                                                                          getCurrentTimestamp) !=
                                                                      ''
                                                                  ? dateTimeFormat(
                                                                      'yMMMd',
                                                                      getCurrentTimestamp)
                                                                  : null)
                                                          .where('statut',
                                                              isEqualTo: '50')
                                                          .where('valideur',
                                                              isEqualTo:
                                                                  currentUserReference)
                                                          .where('type',
                                                              isEqualTo:
                                                                  'Externe'),
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
                                                      List<BonEnvoyeRecord>
                                                          textBonEnvoyeRecordList =
                                                          snapshot.data;
                                                      return Text(
                                                        '${textBonEnvoyeRecordList.length.toString()}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFF630460),
                                                                  fontSize: 25,
                                                                ),
                                                      );
                                                    },
                                                  ),
                                                  Text(
                                                    '/${containerBonEnvoyeRecordList.length.toString()}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF630460),
                                                          fontSize: 50,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 30),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'vt1b7gru' /* valided */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF630460),
                                                        fontSize: 17,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                    StreamBuilder<List<BonEnvoyeRecord>>(
                                      stream: queryBonEnvoyeRecord(
                                        queryBuilder: (bonEnvoyeRecord) =>
                                            bonEnvoyeRecord
                                                .where('statut',
                                                    isEqualTo: '90')
                                                .where('date_valideur',
                                                    isEqualTo: dateTimeFormat(
                                                                'yMMMd',
                                                                getCurrentTimestamp) !=
                                                            ''
                                                        ? dateTimeFormat(
                                                            'yMMMd',
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
                                                              Color(0xFFFF0000),
                                                          fontSize: 50,
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 30),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ccdb7dqy' /* rejected */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFFF0000),
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2, 2, 2, 2),
                                  child: StreamBuilder<List<BonEnvoyeRecord>>(
                                    stream: queryBonEnvoyeRecord(
                                      queryBuilder: (bonEnvoyeRecord) =>
                                          bonEnvoyeRecord
                                              .where('date_clotureur',
                                                  isEqualTo: dateTimeFormat(
                                                              'yMMMd',
                                                              getCurrentTimestamp) !=
                                                          ''
                                                      ? dateTimeFormat('yMMMd',
                                                          getCurrentTimestamp)
                                                      : null)
                                              .where('statut', isEqualTo: '80')
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
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF03160C),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          '${functions.sommeliste(containerBonEnvoyeRecordList.toList()).toString()} FCFA',
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
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
                                                .where(
                                                    'date_clotureur',
                                                    isEqualTo: dateTimeFormat(
                                                                'yMMMd',
                                                                getCurrentTimestamp) !=
                                                            ''
                                                        ? dateTimeFormat(
                                                            'yMMMd',
                                                            getCurrentTimestamp)
                                                        : null)
                                                .where('type',
                                                    isEqualTo:
                                                        'Retour magasin'),
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
                                                              Color(0xFF630460),
                                                          fontSize: 50,
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 30),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6pr2uuus' /* closed */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF630460),
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2, 2, 2, 2),
                                  child: StreamBuilder<List<BonEnvoyeRecord>>(
                                    stream: queryBonEnvoyeRecord(
                                      queryBuilder: (bonEnvoyeRecord) =>
                                          bonEnvoyeRecord
                                              .where(
                                                  'date_clotureur',
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
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF03160C),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          '${functions.sommeliste(containerBonEnvoyeRecordList.toList()).toString()} FCFA',
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
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
                );
              },
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 180, 0, 0),
              child: StreamBuilder<List<DateEnvoyeClotureurRecord>>(
                stream: queryDateEnvoyeClotureurRecord(),
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
                  List<DateEnvoyeClotureurRecord>
                      containerDateEnvoyeClotureurRecordList = snapshot.data;
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                    child: StreamBuilder<List<DateEnvoyeClotureurRecord>>(
                      stream: queryDateEnvoyeClotureurRecord(
                        queryBuilder: (dateEnvoyeClotureurRecord) =>
                            dateEnvoyeClotureurRecord.where('date',
                                isEqualTo: dateTimeFormat(
                                            'yMMMd', getCurrentTimestamp) !=
                                        ''
                                    ? dateTimeFormat(
                                        'yMMMd', getCurrentTimestamp)
                                    : null),
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
                        List<DateEnvoyeClotureurRecord>
                            container1DateEnvoyeClotureurRecordList =
                            snapshot.data;
                        return Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(),
                          child: Container(
                            width: double.infinity,
                            height: 500,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 50),
                                  child: PageView(
                                    controller: pageViewController ??=
                                        PageController(initialPage: 0),
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.04,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFEEEEEE),
                                                ),
                                                alignment:
                                                    AlignmentDirectional(-1, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    FaIcon(
                                                      FontAwesomeIcons
                                                          .balanceScaleLeft,
                                                      color: Colors.black,
                                                      size: 24,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 0, 0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'y8x93irj' /* Balance sheet */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 2),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  width: 200,
                                                  height: 35,
                                                  decoration: BoxDecoration(),
                                                  child: FlutterFlowChoiceChips(
                                                    initiallySelected:
                                                        choiceChipsValue1 !=
                                                                null
                                                            ? [
                                                                choiceChipsValue1
                                                              ]
                                                            : [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '9mdwoiwk' /* G */,
                                                                )
                                                              ],
                                                    options: [
                                                      ChipData(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '5bus5h3f' /* G */,
                                                          ),
                                                          FontAwesomeIcons
                                                              .chartLine),
                                                      ChipData(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'b5z17ps8' /* T */,
                                                          ),
                                                          FontAwesomeIcons
                                                              .table)
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            choiceChipsValue1 =
                                                                val.first),
                                                    selectedChipStyle:
                                                        ChipStyle(
                                                      backgroundColor:
                                                          Color(0xFF323B45),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 13,
                                                              ),
                                                      iconColor: Colors.white,
                                                      iconSize: 18,
                                                      elevation: 8,
                                                    ),
                                                    unselectedChipStyle:
                                                        ChipStyle(
                                                      backgroundColor:
                                                          Color(0x25323B45),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans Condensed',
                                                                color: Color(
                                                                    0xFF323B45),
                                                                fontSize: 11,
                                                              ),
                                                      iconColor:
                                                          Color(0xFF323B45),
                                                      iconSize: 18,
                                                      elevation: 2,
                                                    ),
                                                    chipSpacing: 0,
                                                    multiselect: false,
                                                    initialized:
                                                        choiceChipsValue1 !=
                                                            null,
                                                    alignment:
                                                        WrapAlignment.start,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: StreamBuilder<
                                                List<DateCroisementRecord>>(
                                              stream: queryDateCroisementRecord(
                                                queryBuilder:
                                                    (dateCroisementRecord) =>
                                                        dateCroisementRecord
                                                            .orderBy('date'),
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
                                                List<DateCroisementRecord>
                                                    containerDateCroisementRecordList =
                                                    snapshot.data;
                                                return Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 100,
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if ((choiceChipsValue1 ==
                                                          'G'))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      10, 0, 0),
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                if ((containerDateEnvoyeClotureurRecordList
                                                                        .length !=
                                                                    0))
                                                                  FutureBuilder<
                                                                      ApiCallResponse>(
                                                                    future:
                                                                        GraphStatCall
                                                                            .call(
                                                                      abscisse:
                                                                          functions
                                                                              .listDesX2(containerDateCroisementRecordList.toList()),
                                                                      ordonnee1:
                                                                          functions
                                                                              .listDesY2(containerDateCroisementRecordList.toList()),
                                                                      ordonnee2:
                                                                          functions
                                                                              .listDesY2prime(containerDateCroisementRecordList.toList()),
                                                                    ),
                                                                    builder:
                                                                        (context,
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
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final containerGraphStatResponse =
                                                                          snapshot
                                                                              .data;
                                                                      return Container(
                                                                        width:
                                                                            300,
                                                                        height:
                                                                            300,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          image:
                                                                              DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image:
                                                                                Image.network(
                                                                              getJsonField(
                                                                                containerGraphStatResponse.jsonBody,
                                                                                r'''$.url''',
                                                                              ),
                                                                            ).image,
                                                                          ),
                                                                        ),
                                                                        alignment: AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                      );
                                                                    },
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      if ((choiceChipsValue1 ==
                                                          'T'))
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.25,
                                                              height: 30,
                                                              decoration:
                                                                  BoxDecoration(),
                                                            ),
                                                            Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.25,
                                                              height: 30,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x80630460),
                                                              ),
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0, 0),
                                                              child:
                                                                  SingleChildScrollView(
                                                                scrollDirection:
                                                                    Axis.horizontal,
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    FaIcon(
                                                                      FontAwesomeIcons
                                                                          .longArrowAltDown,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 24,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.25,
                                                              height: 30,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x80630460),
                                                              ),
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0, 0),
                                                              child:
                                                                  SingleChildScrollView(
                                                                scrollDirection:
                                                                    Axis.horizontal,
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    FaIcon(
                                                                      FontAwesomeIcons
                                                                          .longArrowAltUp,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 24,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.25,
                                                              height: 30,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xB3FF0000),
                                                              ),
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0, 0),
                                                              child:
                                                                  SingleChildScrollView(
                                                                scrollDirection:
                                                                    Axis.horizontal,
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .swap_vert_rounded,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 24,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      if ((choiceChipsValue1 ==
                                                          'T'))
                                                        Expanded(
                                                          child: StreamBuilder<
                                                              List<
                                                                  DateCroisementRecord>>(
                                                            stream:
                                                                queryDateCroisementRecord(),
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
                                                              List<DateCroisementRecord>
                                                                  columnDateCroisementRecordList =
                                                                  snapshot.data;
                                                              return SingleChildScrollView(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: List.generate(
                                                                      columnDateCroisementRecordList
                                                                          .length,
                                                                      (columnIndex) {
                                                                    final columnDateCroisementRecord =
                                                                        columnDateCroisementRecordList[
                                                                            columnIndex];
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              MediaQuery.of(context).size.width * 0.25,
                                                                          height:
                                                                              30,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            border:
                                                                                Border.all(
                                                                              color: Color(0x80630460),
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            scrollDirection:
                                                                                Axis.horizontal,
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Text(
                                                                                  columnDateCroisementRecord.date,
                                                                                  style: FlutterFlowTheme.of(context).bodyText1,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              MediaQuery.of(context).size.width * 0.25,
                                                                          height:
                                                                              30,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            border:
                                                                                Border.all(
                                                                              color: Color(0x80630460),
                                                                            ),
                                                                          ),
                                                                          alignment: AlignmentDirectional(
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            scrollDirection:
                                                                                Axis.horizontal,
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Text(
                                                                                  columnDateCroisementRecord.coutCommande.toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyText1,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              MediaQuery.of(context).size.width * 0.25,
                                                                          height:
                                                                              30,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            border:
                                                                                Border.all(
                                                                              color: Color(0x80630460),
                                                                            ),
                                                                          ),
                                                                          alignment: AlignmentDirectional(
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            scrollDirection:
                                                                                Axis.horizontal,
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Text(
                                                                                  columnDateCroisementRecord.coutApprovisio.toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyText1,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              MediaQuery.of(context).size.width * 0.25,
                                                                          height:
                                                                              30,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0xB3FF0000),
                                                                            border:
                                                                                Border.all(
                                                                              color: Color(0x80630460),
                                                                            ),
                                                                          ),
                                                                          alignment: AlignmentDirectional(
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            scrollDirection:
                                                                                Axis.horizontal,
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Text(
                                                                                  columnDateCroisementRecord.coutDifference.toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyText1,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  }),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.04,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEEEEEE),
                                            ),
                                            alignment:
                                                AlignmentDirectional(-1, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.tools,
                                                  color: Colors.black,
                                                  size: 24,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'snrcx3io' /* Stock traffic */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '08uupmq3' /* OUT */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF630460),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      decoration: TextDecoration
                                                          .underline,
                                                    ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'dbrgb7mv' /* IN */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF630460),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      decoration: TextDecoration
                                                          .underline,
                                                    ),
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: StreamBuilder<
                                                List<BonEnvoyeRecord>>(
                                              stream: queryBonEnvoyeRecord(
                                                queryBuilder: (bonEnvoyeRecord) =>
                                                    bonEnvoyeRecord.where(
                                                        'date_clotureur',
                                                        isEqualTo: dateTimeFormat(
                                                                    'yMMMd',
                                                                    getCurrentTimestamp) !=
                                                                ''
                                                            ? dateTimeFormat(
                                                                'yMMMd',
                                                                getCurrentTimestamp)
                                                            : null),
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
                                                List<BonEnvoyeRecord>
                                                    containerrrBonEnvoyeRecordList =
                                                    snapshot.data;
                                                return Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 100,
                                                  decoration: BoxDecoration(),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: StreamBuilder<
                                                      List<BonEnvoyeRecord>>(
                                                    stream:
                                                        queryBonEnvoyeRecord(
                                                      queryBuilder: (bonEnvoyeRecord) => bonEnvoyeRecord
                                                          .where('nature',
                                                              isEqualTo: 'app')
                                                          .where(
                                                              'date_clotureur',
                                                              isEqualTo: dateTimeFormat(
                                                                          'yMMMd',
                                                                          getCurrentTimestamp) !=
                                                                      ''
                                                                  ? dateTimeFormat(
                                                                      'yMMMd',
                                                                      getCurrentTimestamp)
                                                                  : null),
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
                                                      List<BonEnvoyeRecord>
                                                          containerrBonEnvoyeRecordList =
                                                          snapshot.data;
                                                      return Container(
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: StreamBuilder<
                                                            List<
                                                                BonEnvoyeRecord>>(
                                                          stream:
                                                              queryBonEnvoyeRecord(
                                                            queryBuilder: (bonEnvoyeRecord) => bonEnvoyeRecord
                                                                .where('statut',
                                                                    isEqualTo:
                                                                        '80')
                                                                .where('nature',
                                                                    isEqualTo:
                                                                        'com')
                                                                .where(
                                                                    'date_clotureur',
                                                                    isEqualTo: dateTimeFormat('yMMMd',
                                                                                getCurrentTimestamp) !=
                                                                            ''
                                                                        ? dateTimeFormat(
                                                                            'yMMMd',
                                                                            getCurrentTimestamp)
                                                                        : null),
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
                                                            List<BonEnvoyeRecord>
                                                                containerBonEnvoyeRecordList =
                                                                snapshot.data;
                                                            return Container(
                                                              width:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  1,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Container(
                                                                width: 100,
                                                                height: 100,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child:
                                                                    Visibility(
                                                                  visible:
                                                                      (containerrrBonEnvoyeRecordList
                                                                              .length >
                                                                          0),
                                                                  child: StreamBuilder<
                                                                      List<
                                                                          ArticlesRecord>>(
                                                                    stream:
                                                                        queryArticlesRecord(),
                                                                    builder:
                                                                        (context,
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
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<ArticlesRecord>
                                                                          columnArticlesRecordList =
                                                                          snapshot
                                                                              .data;
                                                                      return SingleChildScrollView(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: List.generate(
                                                                              columnArticlesRecordList.length,
                                                                              (columnIndex) {
                                                                            final columnArticlesRecord =
                                                                                columnArticlesRecordList[columnIndex];
                                                                            return Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                                              child: StreamBuilder<List<ArticleSelectonneRecord>>(
                                                                                stream: queryArticleSelectonneRecord(
                                                                                  queryBuilder: (articleSelectonneRecord) => articleSelectonneRecord.where('nom_article', isEqualTo: columnArticlesRecord.nom != '' ? columnArticlesRecord.nom : null),
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
                                                                                  List<ArticleSelectonneRecord> columnArticleSelectonneRecordList = snapshot.data;
                                                                                  // Return an empty Container when the document does not exist.
                                                                                  if (snapshot.data.isEmpty) {
                                                                                    return Container();
                                                                                  }
                                                                                  final columnArticleSelectonneRecord = columnArticleSelectonneRecordList.isNotEmpty ? columnArticleSelectonneRecordList.first : null;
                                                                                  return Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                                                    children: [
                                                                                      Container(
                                                                                        width: MediaQuery.of(context).size.width,
                                                                                        height: 30,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0x80630460),
                                                                                        ),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            StreamBuilder<List<BonEnvoyeRecord>>(
                                                                                              stream: queryBonEnvoyeRecord(
                                                                                                queryBuilder: (bonEnvoyeRecord) => bonEnvoyeRecord.where('statut', isEqualTo: '80').where('nature', isEqualTo: 'com').where('date_clotureur', isEqualTo: dateTimeFormat('yMMMd', getCurrentTimestamp) != '' ? dateTimeFormat('yMMMd', getCurrentTimestamp) : null),
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
                                                                                                List<BonEnvoyeRecord> containercBonEnvoyeRecordList = snapshot.data;
                                                                                                return Container(
                                                                                                  width: MediaQuery.of(context).size.width * 0.2,
                                                                                                  height: 30,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0x8000FF00),
                                                                                                    border: Border.all(
                                                                                                      color: Color(0x80630460),
                                                                                                    ),
                                                                                                  ),
                                                                                                  alignment: AlignmentDirectional(0, 0),
                                                                                                  child: StreamBuilder<List<ArticleSelectonneRecord>>(
                                                                                                    stream: queryArticleSelectonneRecord(
                                                                                                      queryBuilder: (articleSelectonneRecord) => articleSelectonneRecord.where('code', whereIn: containercBonEnvoyeRecordList.map((e) => e.code).toList() != '' ? containercBonEnvoyeRecordList.map((e) => e.code).toList() : null).where('nom_article', isEqualTo: columnArticlesRecord.nom != '' ? columnArticlesRecord.nom : null),
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
                                                                                                      List<ArticleSelectonneRecord> buttonArticleSelectonneRecordList = snapshot.data;
                                                                                                      return FFButtonWidget(
                                                                                                        onPressed: () async {
                                                                                                          setState(() => FFAppState().consommes = true);
                                                                                                        },
                                                                                                        text: functions.sommeQuantite(buttonArticleSelectonneRecordList.toList()).toString(),
                                                                                                        options: FFButtonOptions(
                                                                                                          width: 130,
                                                                                                          height: 40,
                                                                                                          color: Colors.transparent,
                                                                                                          textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                                fontFamily: 'Poppins',
                                                                                                                color: Colors.white,
                                                                                                              ),
                                                                                                          borderSide: BorderSide(
                                                                                                            color: Colors.transparent,
                                                                                                            width: 1,
                                                                                                          ),
                                                                                                        ),
                                                                                                        showLoadingIndicator: false,
                                                                                                      );
                                                                                                    },
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.of(context).size.width * 0.6,
                                                                                              height: 30,
                                                                                              decoration: BoxDecoration(),
                                                                                              alignment: AlignmentDirectional(0, 0),
                                                                                              child: SingleChildScrollView(
                                                                                                scrollDirection: Axis.horizontal,
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      columnArticlesRecord.nom,
                                                                                                      maxLines: 1,
                                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                            fontFamily: 'Poppins',
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                            fontWeight: FontWeight.w600,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            StreamBuilder<List<BonEnvoyeRecord>>(
                                                                                              stream: queryBonEnvoyeRecord(
                                                                                                queryBuilder: (bonEnvoyeRecord) => bonEnvoyeRecord.where('nature', isEqualTo: 'app').where('date_clotureur', isEqualTo: dateTimeFormat('yMMMd', getCurrentTimestamp) != '' ? dateTimeFormat('yMMMd', getCurrentTimestamp) : null),
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
                                                                                                List<BonEnvoyeRecord> containeraBonEnvoyeRecordList = snapshot.data;
                                                                                                return Container(
                                                                                                  width: MediaQuery.of(context).size.width * 0.2,
                                                                                                  height: 30,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0x80FF0000),
                                                                                                    border: Border.all(
                                                                                                      color: Color(0x80630460),
                                                                                                    ),
                                                                                                  ),
                                                                                                  alignment: AlignmentDirectional(0, 0),
                                                                                                  child: StreamBuilder<List<ArticleSelectonneRecord>>(
                                                                                                    stream: queryArticleSelectonneRecord(
                                                                                                      queryBuilder: (articleSelectonneRecord) => articleSelectonneRecord.where('code', whereIn: containeraBonEnvoyeRecordList.map((e) => e.code).toList() != '' ? containeraBonEnvoyeRecordList.map((e) => e.code).toList() : null).where('nom_article', isEqualTo: columnArticlesRecord.nom != '' ? columnArticlesRecord.nom : null),
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
                                                                                                      List<ArticleSelectonneRecord> buttonArticleSelectonneRecordList = snapshot.data;
                                                                                                      return FFButtonWidget(
                                                                                                        onPressed: () async {
                                                                                                          setState(() => FFAppState().consommes = false);
                                                                                                        },
                                                                                                        text: functions.sommeQuantite(buttonArticleSelectonneRecordList.toList()).toString(),
                                                                                                        options: FFButtonOptions(
                                                                                                          width: 130,
                                                                                                          height: 40,
                                                                                                          color: Colors.transparent,
                                                                                                          textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                                fontFamily: 'Poppins',
                                                                                                                color: Colors.white,
                                                                                                              ),
                                                                                                          borderSide: BorderSide(
                                                                                                            color: Colors.transparent,
                                                                                                            width: 1,
                                                                                                          ),
                                                                                                        ),
                                                                                                        showLoadingIndicator: false,
                                                                                                      );
                                                                                                    },
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      if ((FFAppState().consommes == false))
                                                                                        StreamBuilder<List<UtilisateursRecord>>(
                                                                                          stream: queryUtilisateursRecord(
                                                                                            queryBuilder: (utilisateursRecord) => utilisateursRecord.where('fonction', isEqualTo: 'magasinier'),
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
                                                                                            List<UtilisateursRecord> columnUtilisateursRecordList = snapshot.data;
                                                                                            return Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                              children: List.generate(columnUtilisateursRecordList.length, (columnIndex) {
                                                                                                final columnUtilisateursRecord = columnUtilisateursRecordList[columnIndex];
                                                                                                return Container(
                                                                                                  width: MediaQuery.of(context).size.width * 0.8,
                                                                                                  height: 30,
                                                                                                  decoration: BoxDecoration(),
                                                                                                  child: StreamBuilder<List<ArticleSelectonneRecord>>(
                                                                                                    stream: queryArticleSelectonneRecord(
                                                                                                      queryBuilder: (articleSelectonneRecord) => articleSelectonneRecord.where('nom_article', isEqualTo: columnArticlesRecord.nom != '' ? columnArticlesRecord.nom : null).where('demandeur', isEqualTo: columnUtilisateursRecord.reference).where('nature', isEqualTo: 'app').where('code', whereIn: containerrBonEnvoyeRecordList.map((e) => e.code).toList() != '' ? containerrBonEnvoyeRecordList.map((e) => e.code).toList() : null),
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
                                                                                                      List<ArticleSelectonneRecord> containeraArticleSelectonneRecordList = snapshot.data;
                                                                                                      return Container(
                                                                                                        width: MediaQuery.of(context).size.width,
                                                                                                        height: 30,
                                                                                                        decoration: BoxDecoration(),
                                                                                                        child: Stack(
                                                                                                          alignment: AlignmentDirectional(0, 0),
                                                                                                          children: [
                                                                                                            if ((functions.sommeQuantite(containeraArticleSelectonneRecordList.toList()) > 0.0))
                                                                                                              Container(
                                                                                                                width: MediaQuery.of(context).size.width,
                                                                                                                height: 100,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: Color(0x33FF0000),
                                                                                                                ),
                                                                                                              ),
                                                                                                            Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Container(
                                                                                                                  width: MediaQuery.of(context).size.width * 0.8,
                                                                                                                  height: 30,
                                                                                                                  decoration: BoxDecoration(),
                                                                                                                  child: SingleChildScrollView(
                                                                                                                    scrollDirection: Axis.horizontal,
                                                                                                                    child: Row(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      children: [
                                                                                                                        Text(
                                                                                                                          columnUtilisateursRecord.nom,
                                                                                                                          maxLines: 1,
                                                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                                fontFamily: 'Poppins',
                                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            if ((functions.sommeQuantite(containeraArticleSelectonneRecordList.toList()) > 0.0))
                                                                                                              Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                children: [
                                                                                                                  Container(
                                                                                                                    width: MediaQuery.of(context).size.width * 0.2,
                                                                                                                    height: 30,
                                                                                                                    decoration: BoxDecoration(),
                                                                                                                    alignment: AlignmentDirectional(1, 0),
                                                                                                                    child: SingleChildScrollView(
                                                                                                                      scrollDirection: Axis.horizontal,
                                                                                                                      child: Row(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        children: [
                                                                                                                          Text(
                                                                                                                            functions.sommeQuantite(containeraArticleSelectonneRecordList.toList()).toString(),
                                                                                                                            maxLines: 1,
                                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                                  fontFamily: 'Poppins',
                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  ),
                                                                                                );
                                                                                              }),
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                      if ((FFAppState().consommes == true))
                                                                                        StreamBuilder<List<UtilisateursRecord>>(
                                                                                          stream: queryUtilisateursRecord(
                                                                                            queryBuilder: (utilisateursRecord) => utilisateursRecord.where('fonction', isEqualTo: 'maintenancier'),
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
                                                                                            List<UtilisateursRecord> columnUtilisateursRecordList = snapshot.data;
                                                                                            return Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                              children: List.generate(columnUtilisateursRecordList.length, (columnIndex) {
                                                                                                final columnUtilisateursRecord = columnUtilisateursRecordList[columnIndex];
                                                                                                return Align(
                                                                                                  alignment: AlignmentDirectional(-1, 0),
                                                                                                  child: Container(
                                                                                                    width: MediaQuery.of(context).size.width * 0.8,
                                                                                                    height: 30,
                                                                                                    decoration: BoxDecoration(),
                                                                                                    child: StreamBuilder<List<ArticleSelectonneRecord>>(
                                                                                                      stream: queryArticleSelectonneRecord(
                                                                                                        queryBuilder: (articleSelectonneRecord) => articleSelectonneRecord.where('nom_article', isEqualTo: columnArticlesRecord.nom != '' ? columnArticlesRecord.nom : null).where('demandeur', isEqualTo: columnUtilisateursRecord.reference).where('nature', isEqualTo: 'com').where('code', whereIn: containerBonEnvoyeRecordList.map((e) => e.code).toList() != '' ? containerBonEnvoyeRecordList.map((e) => e.code).toList() : null),
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
                                                                                                        List<ArticleSelectonneRecord> containercArticleSelectonneRecordList = snapshot.data;
                                                                                                        return Container(
                                                                                                          width: MediaQuery.of(context).size.width,
                                                                                                          height: 30,
                                                                                                          decoration: BoxDecoration(),
                                                                                                          child: Stack(
                                                                                                            alignment: AlignmentDirectional(0, 0),
                                                                                                            children: [
                                                                                                              if ((functions.sommeQuantite(containercArticleSelectonneRecordList.toList()) > 0.0))
                                                                                                                Container(
                                                                                                                  width: MediaQuery.of(context).size.width,
                                                                                                                  height: 100,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: Color(0x3200FF00),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                children: [
                                                                                                                  Container(
                                                                                                                    width: MediaQuery.of(context).size.width * 0.8,
                                                                                                                    height: 30,
                                                                                                                    decoration: BoxDecoration(),
                                                                                                                    alignment: AlignmentDirectional(1, 0),
                                                                                                                    child: SingleChildScrollView(
                                                                                                                      scrollDirection: Axis.horizontal,
                                                                                                                      child: Row(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        children: [
                                                                                                                          Text(
                                                                                                                            columnUtilisateursRecord.nom,
                                                                                                                            maxLines: 1,
                                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                                  fontFamily: 'Poppins',
                                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                              if ((functions.sommeQuantite(containercArticleSelectonneRecordList.toList()) > 0.0))
                                                                                                                Row(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                  children: [
                                                                                                                    Container(
                                                                                                                      width: MediaQuery.of(context).size.width * 0.2,
                                                                                                                      height: 30,
                                                                                                                      decoration: BoxDecoration(),
                                                                                                                      alignment: AlignmentDirectional(1, 0),
                                                                                                                      child: SingleChildScrollView(
                                                                                                                        scrollDirection: Axis.horizontal,
                                                                                                                        child: Row(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          children: [
                                                                                                                            Text(
                                                                                                                              functions.sommeQuantite(containercArticleSelectonneRecordList.toList()).toString(),
                                                                                                                              maxLines: 1,
                                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                                    fontFamily: 'Poppins',
                                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              }),
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                              ),
                                                                            );
                                                                          }),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.04,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEEEEEE),
                                            ),
                                            alignment:
                                                AlignmentDirectional(-1, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.person,
                                                  color: Colors.black,
                                                  size: 24,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'f7eysk0k' /* Staff performance */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 2),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  width: 250,
                                                  height: 35,
                                                  decoration: BoxDecoration(),
                                                  child: FlutterFlowChoiceChips(
                                                    initiallySelected:
                                                        choiceChipsValue2 !=
                                                                null
                                                            ? [
                                                                choiceChipsValue2
                                                              ]
                                                            : [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'f7qk4eam' /* CR */,
                                                                )
                                                              ],
                                                    options: [
                                                      ChipData(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'rclfctlu' /* CR */,
                                                      )),
                                                      ChipData(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '2gbnarco' /* NV */,
                                                      )),
                                                      ChipData(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'x0b3y7qp' /* VA */,
                                                      )),
                                                      ChipData(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'enqslyx7' /* RE */,
                                                      )),
                                                      ChipData(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'kz8kar28' /* CL */,
                                                      ))
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            choiceChipsValue2 =
                                                                val.first),
                                                    selectedChipStyle:
                                                        ChipStyle(
                                                      backgroundColor:
                                                          Color(0xFF323B45),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 13,
                                                              ),
                                                      iconColor: Colors.white,
                                                      iconSize: 18,
                                                      elevation: 8,
                                                    ),
                                                    unselectedChipStyle:
                                                        ChipStyle(
                                                      backgroundColor:
                                                          Color(0x25323B45),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans Condensed',
                                                                color: Color(
                                                                    0xFF323B45),
                                                                fontSize: 11,
                                                              ),
                                                      iconColor:
                                                          Color(0xFF323B45),
                                                      iconSize: 18,
                                                      elevation: 2,
                                                    ),
                                                    chipSpacing: 0,
                                                    multiselect: false,
                                                    initialized:
                                                        choiceChipsValue2 !=
                                                            null,
                                                    alignment:
                                                        WrapAlignment.start,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                height: 30,
                                                decoration: BoxDecoration(),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.2,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Color(0x80630460),
                                                ),
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g25ioy6d' /* BON */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.3,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Color(0x80630460),
                                                ),
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fs9we87f' /* AMOUNT */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 100,
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if ((choiceChipsValue2 ==
                                                      'CR'))
                                                    StreamBuilder<
                                                        List<DateEnvoyeRecord>>(
                                                      stream:
                                                          queryDateEnvoyeRecord(
                                                        queryBuilder: (dateEnvoyeRecord) => dateEnvoyeRecord
                                                            .where('date',
                                                                isEqualTo: dateTimeFormat(
                                                                            'yMMMd',
                                                                            getCurrentTimestamp) !=
                                                                        ''
                                                                    ? dateTimeFormat(
                                                                        'yMMMd',
                                                                        getCurrentTimestamp)
                                                                    : null)
                                                            .where('nature',
                                                                isEqualTo:
                                                                    'com'),
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<DateEnvoyeRecord>
                                                            columnDateEnvoyeRecordList =
                                                            snapshot.data;
                                                        return SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: List.generate(
                                                                columnDateEnvoyeRecordList
                                                                    .length,
                                                                (columnIndex) {
                                                              final columnDateEnvoyeRecord =
                                                                  columnDateEnvoyeRecordList[
                                                                      columnIndex];
                                                              return Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.5,
                                                                    height: 30,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF630460),
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          StreamBuilder<
                                                                              UtilisateursRecord>(
                                                                            stream:
                                                                                UtilisateursRecord.getDocument(columnDateEnvoyeRecord.demandeur),
                                                                            builder:
                                                                                (context, snapshot) {
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
                                                                              final textUtilisateursRecord = snapshot.data;
                                                                              return Text(
                                                                                textUtilisateursRecord.nom,
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                              );
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.2,
                                                                    height: 30,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF630460),
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            columnDateEnvoyeRecord.bonCree.toString(),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyText1,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.3,
                                                                    height: 30,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF630460),
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            columnDateEnvoyeRecord.coutCree.toString(),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyText1,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              );
                                                            }),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  if ((choiceChipsValue2 ==
                                                      'NV'))
                                                    StreamBuilder<
                                                        List<
                                                            DateEnTraitementRecord>>(
                                                      stream:
                                                          queryDateEnTraitementRecord(
                                                        queryBuilder: (dateEnTraitementRecord) =>
                                                            dateEnTraitementRecord
                                                                .where('date',
                                                                    isEqualTo: dateTimeFormat('yMMMd',
                                                                                getCurrentTimestamp) !=
                                                                            ''
                                                                        ? dateTimeFormat(
                                                                            'yMMMd',
                                                                            getCurrentTimestamp)
                                                                        : null)
                                                                .where('nature',
                                                                    isEqualTo:
                                                                        'com')
                                                                .where('nature',
                                                                    isEqualTo:
                                                                        'com'),
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<DateEnTraitementRecord>
                                                            columnDateEnTraitementRecordList =
                                                            snapshot.data;
                                                        return SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: List.generate(
                                                                columnDateEnTraitementRecordList
                                                                    .length,
                                                                (columnIndex) {
                                                              final columnDateEnTraitementRecord =
                                                                  columnDateEnTraitementRecordList[
                                                                      columnIndex];
                                                              return Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.5,
                                                                    height: 30,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF630460),
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          StreamBuilder<
                                                                              UtilisateursRecord>(
                                                                            stream:
                                                                                UtilisateursRecord.getDocument(columnDateEnTraitementRecord.demandeur),
                                                                            builder:
                                                                                (context, snapshot) {
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
                                                                              final textUtilisateursRecord = snapshot.data;
                                                                              return Text(
                                                                                textUtilisateursRecord.nom,
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                              );
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.2,
                                                                    height: 30,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF630460),
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            columnDateEnTraitementRecord.bonEncours.toString(),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyText1,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.3,
                                                                    height: 30,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF630460),
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            columnDateEnTraitementRecord.coutEncours.toString(),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyText1,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              );
                                                            }),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  if ((choiceChipsValue2 ==
                                                      'VA'))
                                                    StreamBuilder<
                                                        List<
                                                            DateEnvoyeValideurRecord>>(
                                                      stream:
                                                          queryDateEnvoyeValideurRecord(
                                                        queryBuilder: (dateEnvoyeValideurRecord) => dateEnvoyeValideurRecord
                                                            .where('date',
                                                                isEqualTo: dateTimeFormat(
                                                                            'yMMMd',
                                                                            getCurrentTimestamp) !=
                                                                        ''
                                                                    ? dateTimeFormat(
                                                                        'yMMMd',
                                                                        getCurrentTimestamp)
                                                                    : null)
                                                            .where('nature',
                                                                isEqualTo:
                                                                    'com'),
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<DateEnvoyeValideurRecord>
                                                            columnDateEnvoyeValideurRecordList =
                                                            snapshot.data;
                                                        return SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: List.generate(
                                                                columnDateEnvoyeValideurRecordList
                                                                    .length,
                                                                (columnIndex) {
                                                              final columnDateEnvoyeValideurRecord =
                                                                  columnDateEnvoyeValideurRecordList[
                                                                      columnIndex];
                                                              return Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.5,
                                                                    height: 30,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF630460),
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          StreamBuilder<
                                                                              UtilisateursRecord>(
                                                                            stream:
                                                                                UtilisateursRecord.getDocument(columnDateEnvoyeValideurRecord.valideur),
                                                                            builder:
                                                                                (context, snapshot) {
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
                                                                              final textUtilisateursRecord = snapshot.data;
                                                                              return Text(
                                                                                textUtilisateursRecord.nom,
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                              );
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.2,
                                                                    height: 30,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF630460),
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            columnDateEnvoyeValideurRecord.bonValide.toString(),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyText1,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.3,
                                                                    height: 30,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF630460),
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            columnDateEnvoyeValideurRecord.coutValide.toString(),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyText1,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              );
                                                            }),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  if ((choiceChipsValue2 ==
                                                      'RE'))
                                                    StreamBuilder<
                                                        List<
                                                            DateRejeteValideurRecord>>(
                                                      stream:
                                                          queryDateRejeteValideurRecord(
                                                        queryBuilder: (dateRejeteValideurRecord) => dateRejeteValideurRecord
                                                            .where('date',
                                                                isEqualTo: dateTimeFormat(
                                                                            'yMMMd',
                                                                            getCurrentTimestamp) !=
                                                                        ''
                                                                    ? dateTimeFormat(
                                                                        'yMMMd',
                                                                        getCurrentTimestamp)
                                                                    : null)
                                                            .where('nature',
                                                                isEqualTo:
                                                                    'com'),
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<DateRejeteValideurRecord>
                                                            columnDateRejeteValideurRecordList =
                                                            snapshot.data;
                                                        return SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: List.generate(
                                                                columnDateRejeteValideurRecordList
                                                                    .length,
                                                                (columnIndex) {
                                                              final columnDateRejeteValideurRecord =
                                                                  columnDateRejeteValideurRecordList[
                                                                      columnIndex];
                                                              return Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.5,
                                                                    height: 30,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF630460),
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          StreamBuilder<
                                                                              UtilisateursRecord>(
                                                                            stream:
                                                                                UtilisateursRecord.getDocument(columnDateRejeteValideurRecord.rejeteur),
                                                                            builder:
                                                                                (context, snapshot) {
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
                                                                              final textUtilisateursRecord = snapshot.data;
                                                                              return Text(
                                                                                textUtilisateursRecord.nom,
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                              );
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.2,
                                                                    height: 30,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF630460),
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            columnDateRejeteValideurRecord.bonRejete.toString(),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyText1,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.3,
                                                                    height: 30,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF630460),
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            columnDateRejeteValideurRecord.coutRejete.toString(),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyText1,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              );
                                                            }),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  if ((choiceChipsValue2 ==
                                                      'CL'))
                                                    StreamBuilder<
                                                        List<
                                                            DateEnvoyeClotureurRecord>>(
                                                      stream:
                                                          queryDateEnvoyeClotureurRecord(
                                                        queryBuilder: (dateEnvoyeClotureurRecord) => dateEnvoyeClotureurRecord
                                                            .where('date',
                                                                isEqualTo: dateTimeFormat(
                                                                            'yMMMd',
                                                                            getCurrentTimestamp) !=
                                                                        ''
                                                                    ? dateTimeFormat(
                                                                        'yMMMd',
                                                                        getCurrentTimestamp)
                                                                    : null)
                                                            .where('nature',
                                                                isEqualTo:
                                                                    'com'),
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<DateEnvoyeClotureurRecord>
                                                            columnDateEnvoyeClotureurRecordList =
                                                            snapshot.data;
                                                        return SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: List.generate(
                                                                columnDateEnvoyeClotureurRecordList
                                                                    .length,
                                                                (columnIndex) {
                                                              final columnDateEnvoyeClotureurRecord =
                                                                  columnDateEnvoyeClotureurRecordList[
                                                                      columnIndex];
                                                              return Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.5,
                                                                    height: 30,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF630460),
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          StreamBuilder<
                                                                              UtilisateursRecord>(
                                                                            stream:
                                                                                UtilisateursRecord.getDocument(columnDateEnvoyeClotureurRecord.clotureur),
                                                                            builder:
                                                                                (context, snapshot) {
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
                                                                              final textUtilisateursRecord = snapshot.data;
                                                                              return Text(
                                                                                textUtilisateursRecord.nom,
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                              );
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.2,
                                                                    height: 30,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF630460),
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            columnDateEnvoyeClotureurRecord.bonCloture.toString(),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyText1,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.3,
                                                                    height: 30,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF630460),
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            columnDateEnvoyeClotureurRecord.coutCloture.toString(),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyText1,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              );
                                                            }),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 1),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: SmoothPageIndicator(
                                      controller: pageViewController ??=
                                          PageController(initialPage: 0),
                                      count: 3,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) {
                                        pageViewController.animateToPage(
                                          i,
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      effect: ExpandingDotsEffect(
                                        expansionFactor: 2,
                                        spacing: 8,
                                        radius: 16,
                                        dotWidth: 16,
                                        dotHeight: 16,
                                        dotColor: Color(0xFF9E9E9E),
                                        activeDotColor: Color(0xFF3F51B5),
                                        paintStyle: PaintingStyle.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
