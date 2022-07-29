import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInterface2BonWidget extends StatefulWidget {
  const UserInterface2BonWidget({
    Key key,
    this.leCode,
    this.leNom,
    this.laPriorite,
  }) : super(key: key);

  final String leCode;
  final String leNom;
  final String laPriorite;

  @override
  _UserInterface2BonWidgetState createState() =>
      _UserInterface2BonWidgetState();
}

class _UserInterface2BonWidgetState extends State<UserInterface2BonWidget> {
  DateTimeRange calendarSelectedDay1;
  DateTimeRange calendarSelectedDay2;
  DateTimeRange calendarSelectedDay3;
  DateTimeRange calendarSelectedDay4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay1 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    calendarSelectedDay2 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    calendarSelectedDay3 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    calendarSelectedDay4 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
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
            userInterface2BonArticleSelectonneRecordList = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Color(0xFF662D91),
            automaticallyImplyLeading: true,
            title: Text(
              FFLocalizations.of(context).getText(
                '5majplrf' /* STOCKApp */,
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
                buttonSize: 40,
                icon: Icon(
                  Icons.filter_alt,
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 40,
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
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
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
                                  'mmmyy926' /* BONS */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
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
                                'user_interface1_art',
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
                                Icons.construction,
                                color: Colors.black,
                              ),
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  'ruzteo05' /* ARTICLES */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
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
                                  'j2qzff8q' /* STATISTIQUES */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
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
                                  '3hs9avle' /* PARAMETRES */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
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
                                  '82ncferd' /* DECONNEXION */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
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
                  alignment: AlignmentDirectional(-0.84, -0.96),
                  child: StreamBuilder<List<BonEnvoyeRecord>>(
                    stream: queryBonEnvoyeRecord(
                      queryBuilder: (bonEnvoyeRecord) => bonEnvoyeRecord
                          .where('statut', isEqualTo: '70')
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
                      List<BonEnvoyeRecord> badgeBonEnvoyeRecordList =
                          snapshot.data;
                      return Badge(
                        badgeContent: Text(
                          badgeBonEnvoyeRecordList.length.toString(),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                        ),
                        showBadge: badgeBonEnvoyeRecordList.length >= 1,
                        shape: BadgeShape.circle,
                        badgeColor: FlutterFlowTheme.of(context).primaryColor,
                        elevation: 4,
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        position: BadgePosition.topEnd(),
                        animationType: BadgeAnimationType.scale,
                        toAnimate: true,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.55, -0.96),
                  child: StreamBuilder<List<BonEnvoyeRecord>>(
                    stream: queryBonEnvoyeRecord(
                      queryBuilder: (bonEnvoyeRecord) => bonEnvoyeRecord
                          .where('statut', isEqualTo: '70')
                          .where('type', isEqualTo: 'Externe')
                          .where('statut', isEqualTo: '70'),
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
                      List<BonEnvoyeRecord> badgeBonEnvoyeRecordList =
                          snapshot.data;
                      return Badge(
                        badgeContent: Text(
                          badgeBonEnvoyeRecordList.length.toString(),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                        ),
                        showBadge: badgeBonEnvoyeRecordList.length >= 1,
                        shape: BadgeShape.circle,
                        badgeColor: FlutterFlowTheme.of(context).primaryColor,
                        elevation: 4,
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        position: BadgePosition.topEnd(),
                        animationType: BadgeAnimationType.scale,
                        toAnimate: true,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: DefaultTabController(
                    length: 2,
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
                                'jljzlnlp' /* Ordered */,
                              ),
                            ),
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'zm08rgax' /* Supply */,
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 1, 0, 0),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Container(
                                        width: double.infinity,
                                        color: Color(0x4D662D91),
                                        child: ExpandableNotifier(
                                          initialExpanded: false,
                                          child: ExpandablePanel(
                                            header: Container(
                                              width: 100,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF662D91),
                                                border: Border.all(
                                                  color: Color(0xFF662D91),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      if ((FFAppState().fil21 ==
                                                          false))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 2, 0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '0zdy667m' /* Start */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .subtitle1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                ),
                                                          ),
                                                        ),
                                                      if ((FFAppState().fil21 ==
                                                          true))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 2, 0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'cpvd7ge6' /* Start */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .subtitle1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                  Container(
                                                    width: 100,
                                                    height: 35,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        setState(() =>
                                                            FFAppState().fil21 =
                                                                false);
                                                      },
                                                      child: Text(
                                                        functions.timestampTOstring(
                                                            calendarSelectedDay1
                                                                ?.start),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                    ),
                                                  ),
                                                  Stack(
                                                    children: [
                                                      if ((FFAppState().fil21 ==
                                                          true))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 2, 0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              't1c9x5to' /* End */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .subtitle1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                ),
                                                          ),
                                                        ),
                                                      if ((FFAppState().fil21 ==
                                                          false))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 2, 0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'juesydu4' /* End */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .subtitle1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                  Container(
                                                    width: 100,
                                                    height: 35,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        setState(() =>
                                                            FFAppState().fil21 =
                                                                true);
                                                      },
                                                      child: Text(
                                                        functions.timestampTOstring(
                                                            calendarSelectedDay2
                                                                ?.start),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            collapsed: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 4,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEEEEEE),
                                              ),
                                            ),
                                            expanded: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if ((FFAppState().fil21 ==
                                                      false))
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 130,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0),
                                                      ),
                                                      child:
                                                          FlutterFlowCalendar(
                                                        color:
                                                            Color(0xFF662D91),
                                                        iconColor:
                                                            Color(0xFF662D91),
                                                        weekFormat: true,
                                                        weekStartsMonday: true,
                                                        initialDate:
                                                            getCurrentTimestamp,
                                                        onChange: (DateTimeRange
                                                            newSelectedDate) {
                                                          setState(() =>
                                                              calendarSelectedDay1 =
                                                                  newSelectedDate);
                                                        },
                                                        titleStyle: TextStyle(
                                                          color:
                                                              Color(0xFF662D91),
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                        dayOfWeekStyle:
                                                            TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                        dateStyle: TextStyle(),
                                                        selectedDateStyle:
                                                            TextStyle(),
                                                        inactiveDateStyle:
                                                            TextStyle(),
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ),
                                                    ),
                                                  if ((FFAppState().fil21 ==
                                                      true))
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 130,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0),
                                                      ),
                                                      child:
                                                          FlutterFlowCalendar(
                                                        color:
                                                            Color(0xFF662D91),
                                                        iconColor:
                                                            Color(0xFF662D91),
                                                        weekFormat: true,
                                                        weekStartsMonday: true,
                                                        onChange: (DateTimeRange
                                                            newSelectedDate) {
                                                          setState(() =>
                                                              calendarSelectedDay2 =
                                                                  newSelectedDate);
                                                        },
                                                        titleStyle: TextStyle(
                                                          color:
                                                              Color(0xFF662D91),
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                        dayOfWeekStyle:
                                                            TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                        dateStyle: TextStyle(),
                                                        selectedDateStyle:
                                                            TextStyle(),
                                                        inactiveDateStyle:
                                                            TextStyle(),
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                            theme: ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: false,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child:
                                        StreamBuilder<List<DateEnvoyeRecord>>(
                                      stream: queryDateEnvoyeRecord(
                                        queryBuilder: (dateEnvoyeRecord) => dateEnvoyeRecord
                                            .where('nature', isEqualTo: 'com')
                                            .where('date',
                                                isGreaterThan: functions
                                                            .timestampTOstringmoins(
                                                                calendarSelectedDay1
                                                                    ?.start) !=
                                                        ''
                                                    ? functions
                                                        .timestampTOstringmoins(
                                                            calendarSelectedDay1
                                                                ?.start)
                                                    : null)
                                            .where('date',
                                                isLessThan: functions.timestampTOstringplus(calendarSelectedDay2?.start) != ''
                                                    ? functions.timestampTOstringplus(
                                                        calendarSelectedDay2?.start)
                                                    : null)
                                            .where('index', isEqualTo: 1)
                                            .orderBy('date', descending: true),
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
                                        List<DateEnvoyeRecord>
                                            columnDateEnvoyeRecordList =
                                            snapshot.data;
                                        return SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: List.generate(
                                                columnDateEnvoyeRecordList
                                                    .length, (columnIndex) {
                                              final columnDateEnvoyeRecord =
                                                  columnDateEnvoyeRecordList[
                                                      columnIndex];
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    columnDateEnvoyeRecord.date,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                  ),
                                                  StreamBuilder<
                                                      List<BonEnvoyeRecord>>(
                                                    stream:
                                                        queryBonEnvoyeRecord(
                                                      queryBuilder: (bonEnvoyeRecord) =>
                                                          bonEnvoyeRecord
                                                              .where('date',
                                                                  isEqualTo: columnDateEnvoyeRecord
                                                                              .date !=
                                                                          ''
                                                                      ? columnDateEnvoyeRecord
                                                                          .date
                                                                      : null)
                                                              .where(
                                                                  'nature',
                                                                  isEqualTo:
                                                                      'com')
                                                              .orderBy('heure',
                                                                  descending:
                                                                      true),
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
                                                          columnBonEnvoyeRecordList =
                                                          snapshot.data;
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: List.generate(
                                                            columnBonEnvoyeRecordList
                                                                .length,
                                                            (columnIndex) {
                                                          final columnBonEnvoyeRecord =
                                                              columnBonEnvoyeRecordList[
                                                                  columnIndex];
                                                          return Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            8,
                                                                            2,
                                                                            0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.1,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.1,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0xFF662D91),
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0, 0),
                                                                  child:
                                                                      InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      if (columnBonEnvoyeRecord
                                                                              .statut ==
                                                                          '80') {
                                                                        context
                                                                            .pushNamed(
                                                                          'template_bon',
                                                                          queryParams:
                                                                              {
                                                                            'bon':
                                                                                serializeParam(columnBonEnvoyeRecord, ParamType.Document),
                                                                          }.withoutNulls,
                                                                          extra: <
                                                                              String,
                                                                              dynamic>{
                                                                            'bon':
                                                                                columnBonEnvoyeRecord,
                                                                          },
                                                                        );
                                                                      } else {
                                                                        if (columnBonEnvoyeRecord.statut ==
                                                                            '90') {
                                                                          context
                                                                              .pushNamed(
                                                                            'template_bon',
                                                                            queryParams:
                                                                                {
                                                                              'bon': serializeParam(columnBonEnvoyeRecord, ParamType.Document),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              'bon': columnBonEnvoyeRecord,
                                                                            },
                                                                          );
                                                                        }
                                                                      }
                                                                    },
                                                                    child: Text(
                                                                      columnBonEnvoyeRecord
                                                                          .priorite,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontSize:
                                                                                20,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Card(
                                                                  clipBehavior:
                                                                      Clip.antiAliasWithSaveLayer,
                                                                  color: Color(
                                                                      0xFFF5F5F5),
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              15),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width,
                                                                      color: Colors
                                                                          .white,
                                                                      child:
                                                                          ExpandableNotifier(
                                                                        initialExpanded:
                                                                            false,
                                                                        child:
                                                                            ExpandablePanel(
                                                                          header:
                                                                              SingleChildScrollView(
                                                                            scrollDirection:
                                                                                Axis.horizontal,
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  columnBonEnvoyeRecord.nom,
                                                                                  maxLines: 1,
                                                                                  style: FlutterFlowTheme.of(context).title1.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: Colors.black,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          collapsed:
                                                                              Container(
                                                                            width:
                                                                                MediaQuery.of(context).size.width,
                                                                            height:
                                                                                20,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0xFFEEEEEE),
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Text(
                                                                                  'STATUT: ${columnBonEnvoyeRecord.intituleStatut}',
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: Color(0x8A000000),
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                ),
                                                                                Text(
                                                                                  columnBonEnvoyeRecord.heure,
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: Color(0x8A000000),
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          expanded:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              SingleChildScrollView(
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: MediaQuery.of(context).size.width,
                                                                                      height: 20,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFFEEEEEE),
                                                                                      ),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Text(
                                                                                            'STATUT: ${columnBonEnvoyeRecord.intituleStatut}',
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  color: Color(0x8A000000),
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            columnBonEnvoyeRecord.heure,
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  color: Color(0x8A000000),
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Text(
                                                                                      'CODE: ${columnBonEnvoyeRecord.code}',
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Color(0x8A000000),
                                                                                          ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                      child: StreamBuilder<UtilisateursRecord>(
                                                                                        stream: UtilisateursRecord.getDocument(columnBonEnvoyeRecord.demandeur),
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
                                                                                          final textUtilisateursRecord = snapshot.data;
                                                                                          return Text(
                                                                                            'ENVOYE PAR: ${textUtilisateursRecord.nom}',
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  color: Color(0x8A000000),
                                                                                                  fontSize: 14,
                                                                                                  fontWeight: FontWeight.normal,
                                                                                                ),
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                      child: Text(
                                                                                        'VALEUR: ${columnBonEnvoyeRecord.cout?.toString()} FCFA',
                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              color: Color(0x8A000000),
                                                                                              fontSize: 16,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '1pfy8e2c' /* ARTICLE(S):  */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  color: Color(0x8A000000),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: StreamBuilder<List<ArticleSelectonneRecord>>(
                                                                                            stream: queryArticleSelectonneRecord(
                                                                                              queryBuilder: (articleSelectonneRecord) => articleSelectonneRecord.where('code', isEqualTo: columnBonEnvoyeRecord.code != '' ? columnBonEnvoyeRecord.code : null).where('nature', isEqualTo: 'com'),
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
                                                                                              List<ArticleSelectonneRecord> rowArticleSelectonneRecordList = snapshot.data;
                                                                                              return SingleChildScrollView(
                                                                                                scrollDirection: Axis.horizontal,
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: List.generate(rowArticleSelectonneRecordList.length, (rowIndex) {
                                                                                                    final rowArticleSelectonneRecord = rowArticleSelectonneRecordList[rowIndex];
                                                                                                    return Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                                      child: Text(
                                                                                                        '(${rowArticleSelectonneRecord.quantiteArticle?.toString()})${rowArticleSelectonneRecord.nomArticle}, ',
                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: 'Poppins',
                                                                                                              color: Color(0x8A000000),
                                                                                                            ),
                                                                                                      ),
                                                                                                    );
                                                                                                  }),
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
                                                                              Stack(
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      if ((columnBonEnvoyeRecord.statut == '90'))
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(0, 0),
                                                                                          child: FlutterFlowIconButton(
                                                                                            borderColor: Colors.transparent,
                                                                                            borderRadius: 30,
                                                                                            borderWidth: 1,
                                                                                            buttonSize: 40,
                                                                                            icon: Icon(
                                                                                              Icons.delete,
                                                                                              color: Color(0xFFFF0000),
                                                                                              size: 20,
                                                                                            ),
                                                                                            onPressed: () {
                                                                                              print('IconButton pressed ...');
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                      if ((columnBonEnvoyeRecord.statut != '90'))
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(0, 0),
                                                                                          child: FlutterFlowIconButton(
                                                                                            borderColor: Colors.transparent,
                                                                                            borderRadius: 30,
                                                                                            borderWidth: 1,
                                                                                            buttonSize: 40,
                                                                                            icon: Icon(
                                                                                              Icons.check,
                                                                                              color: Color(0xFF00FF00),
                                                                                              size: 20,
                                                                                            ),
                                                                                            onPressed: () {
                                                                                              print('IconButton pressed ...');
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                  StreamBuilder<List<DateEnTraitementRecord>>(
                                                                                    stream: queryDateEnTraitementRecord(
                                                                                      queryBuilder: (dateEnTraitementRecord) => dateEnTraitementRecord.where('dateFiltre', isEqualTo: columnBonEnvoyeRecord.dateFiltre).where('demandeur', isEqualTo: columnBonEnvoyeRecord.demandeur).where('nature', isEqualTo: 'com'),
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
                                                                                      List<DateEnTraitementRecord> rowDateEnTraitementRecordList = snapshot.data;
                                                                                      final rowDateEnTraitementRecord = rowDateEnTraitementRecordList.isNotEmpty ? rowDateEnTraitementRecordList.first : null;
                                                                                      return Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          if ((columnBonEnvoyeRecord.statut == '70'))
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0),
                                                                                              child: StreamBuilder<List<DateRejeteValideurRecord>>(
                                                                                                stream: queryDateRejeteValideurRecord(
                                                                                                  queryBuilder: (dateRejeteValideurRecord) => dateRejeteValideurRecord.where('date', isEqualTo: dateTimeFormat('yMMMd', getCurrentTimestamp) != '' ? dateTimeFormat('yMMMd', getCurrentTimestamp) : null).where('rejeteur', isEqualTo: currentUserReference).where('nature', isEqualTo: 'com'),
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
                                                                                                  List<DateRejeteValideurRecord> iconButtonDateRejeteValideurRecordList = snapshot.data;
                                                                                                  final iconButtonDateRejeteValideurRecord = iconButtonDateRejeteValideurRecordList.isNotEmpty ? iconButtonDateRejeteValideurRecordList.first : null;
                                                                                                  return FlutterFlowIconButton(
                                                                                                    borderColor: Colors.transparent,
                                                                                                    borderRadius: 30,
                                                                                                    borderWidth: 1,
                                                                                                    buttonSize: 40,
                                                                                                    icon: Icon(
                                                                                                      Icons.delete,
                                                                                                      color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                      size: 20,
                                                                                                    ),
                                                                                                    onPressed: () async {
                                                                                                      final bonEnvoyeUpdateData = createBonEnvoyeRecordData(
                                                                                                        statut: '90',
                                                                                                        intituleStatut: 'rejeté',
                                                                                                        valideur: currentUserReference,
                                                                                                        dateValideur: dateTimeFormat('yMMMd', getCurrentTimestamp),
                                                                                                        heureValideur: dateTimeFormat('Hm', getCurrentTimestamp),
                                                                                                        jourValideur: dateTimeFormat('EEEE', getCurrentTimestamp),
                                                                                                        anneeValideur: dateTimeFormat('yQQQ', getCurrentTimestamp),
                                                                                                        nom: '',
                                                                                                        dateFiltre2: getCurrentTimestamp,
                                                                                                      );
                                                                                                      await columnBonEnvoyeRecord.reference.update(bonEnvoyeUpdateData);
                                                                                                      if (iconButtonDateRejeteValideurRecord != null) {
                                                                                                        final dateRejeteValideurUpdateData = {
                                                                                                          'bonRejete': FieldValue.increment(1.0),
                                                                                                          'coutRejete': FieldValue.increment(columnBonEnvoyeRecord.cout),
                                                                                                        };
                                                                                                        await iconButtonDateRejeteValideurRecord.reference.update(dateRejeteValideurUpdateData);
                                                                                                      } else {
                                                                                                        final dateRejeteValideurCreateData = createDateRejeteValideurRecordData(
                                                                                                          date: dateTimeFormat('yMMMd', getCurrentTimestamp),
                                                                                                          rejeteur: currentUserReference,
                                                                                                          bonRejete: 1.0,
                                                                                                          coutRejete: columnBonEnvoyeRecord.cout,
                                                                                                          nature: 'com',
                                                                                                          dateFiltre: getCurrentTimestamp,
                                                                                                        );
                                                                                                        await DateRejeteValideurRecord.collection.doc().set(dateRejeteValideurCreateData);
                                                                                                      }

                                                                                                      if (rowDateEnTraitementRecord != null) {
                                                                                                        final dateEnTraitementUpdateData = {
                                                                                                          'bonEncours': FieldValue.increment(functions.negative(1.0)),
                                                                                                          'coutEncours': FieldValue.increment(functions.negative(columnBonEnvoyeRecord.cout)),
                                                                                                        };
                                                                                                        await rowDateEnTraitementRecord.reference.update(dateEnTraitementUpdateData);
                                                                                                      }
                                                                                                    },
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                            ),
                                                                                          if ((columnBonEnvoyeRecord.statut == '70'))
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0),
                                                                                              child: StreamBuilder<List<DateEnvoyeValideurRecord>>(
                                                                                                stream: queryDateEnvoyeValideurRecord(
                                                                                                  queryBuilder: (dateEnvoyeValideurRecord) => dateEnvoyeValideurRecord.where('date', isEqualTo: dateTimeFormat('yMMMd', getCurrentTimestamp) != '' ? dateTimeFormat('yMMMd', getCurrentTimestamp) : null).where('valideur', isEqualTo: currentUserReference).where('nature', isEqualTo: 'com'),
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
                                                                                                  List<DateEnvoyeValideurRecord> iconButtonDateEnvoyeValideurRecordList = snapshot.data;
                                                                                                  final iconButtonDateEnvoyeValideurRecord = iconButtonDateEnvoyeValideurRecordList.isNotEmpty ? iconButtonDateEnvoyeValideurRecordList.first : null;
                                                                                                  return FlutterFlowIconButton(
                                                                                                    borderColor: Colors.transparent,
                                                                                                    borderRadius: 30,
                                                                                                    borderWidth: 1,
                                                                                                    buttonSize: 40,
                                                                                                    icon: Icon(
                                                                                                      Icons.check,
                                                                                                      color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                      size: 20,
                                                                                                    ),
                                                                                                    onPressed: () async {
                                                                                                      final bonEnvoyeUpdateData = createBonEnvoyeRecordData(
                                                                                                        statut: '50',
                                                                                                        intituleStatut: 'approuvé',
                                                                                                        valideur: currentUserReference,
                                                                                                        dateValideur: dateTimeFormat('yMMMd', getCurrentTimestamp),
                                                                                                        heureValideur: dateTimeFormat('Hm', getCurrentTimestamp),
                                                                                                        jourValideur: dateTimeFormat('EEEE', getCurrentTimestamp),
                                                                                                        anneeValideur: dateTimeFormat('yQQQ', getCurrentTimestamp),
                                                                                                      );
                                                                                                      await columnBonEnvoyeRecord.reference.update(bonEnvoyeUpdateData);
                                                                                                      if (iconButtonDateEnvoyeValideurRecord != null) {
                                                                                                        final dateEnvoyeValideurUpdateData = {
                                                                                                          'bonValide': FieldValue.increment(1.0),
                                                                                                          'coutValide': FieldValue.increment(columnBonEnvoyeRecord.cout),
                                                                                                        };
                                                                                                        await iconButtonDateEnvoyeValideurRecord.reference.update(dateEnvoyeValideurUpdateData);
                                                                                                      } else {
                                                                                                        final dateEnvoyeValideurCreateData = createDateEnvoyeValideurRecordData(
                                                                                                          date: dateTimeFormat('yMMMd', getCurrentTimestamp),
                                                                                                          valideur: currentUserReference,
                                                                                                          bonValide: 1.0,
                                                                                                          coutValide: columnBonEnvoyeRecord.cout,
                                                                                                          nature: 'com',
                                                                                                          dateFiltre: getCurrentTimestamp,
                                                                                                        );
                                                                                                        await DateEnvoyeValideurRecord.collection.doc().set(dateEnvoyeValideurCreateData);
                                                                                                      }

                                                                                                      if (rowDateEnTraitementRecord != null) {
                                                                                                        final dateEnTraitementUpdateData = {
                                                                                                          'bonEncours': FieldValue.increment(functions.negative(1.0)),
                                                                                                          'coutEncours': FieldValue.increment(functions.negative(columnBonEnvoyeRecord.cout)),
                                                                                                        };
                                                                                                        await rowDateEnTraitementRecord.reference.update(dateEnTraitementUpdateData);
                                                                                                      }
                                                                                                    },
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                            ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          theme:
                                                                              ExpandableThemeData(
                                                                            tapHeaderToExpand:
                                                                                true,
                                                                            tapBodyToExpand:
                                                                                true,
                                                                            tapBodyToCollapse:
                                                                                true,
                                                                            headerAlignment:
                                                                                ExpandablePanelHeaderAlignment.center,
                                                                            hasIcon:
                                                                                true,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          );
                                                        }),
                                                      );
                                                    },
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
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 1, 0, 0),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Container(
                                        width: double.infinity,
                                        color: Color(0x4D662D91),
                                        child: ExpandableNotifier(
                                          initialExpanded: false,
                                          child: ExpandablePanel(
                                            header: Container(
                                              width: 100,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF662D91),
                                                border: Border.all(
                                                  color: Color(0xFF662D91),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      if ((FFAppState().fil22 ==
                                                          false))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 2, 0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '54s4xyuc' /* Start */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .subtitle1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                ),
                                                          ),
                                                        ),
                                                      if ((FFAppState().fil22 ==
                                                          true))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 2, 0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'rbmnzviq' /* Start */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .subtitle1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                  Container(
                                                    width: 100,
                                                    height: 35,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        setState(() =>
                                                            FFAppState().fil22 =
                                                                false);
                                                      },
                                                      child: Text(
                                                        functions.timestampTOstring(
                                                            calendarSelectedDay3
                                                                ?.start),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                    ),
                                                  ),
                                                  Stack(
                                                    children: [
                                                      if ((FFAppState().fil22 ==
                                                          true))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 2, 0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'zuamdyx5' /* End */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .subtitle1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                ),
                                                          ),
                                                        ),
                                                      if ((FFAppState().fil22 ==
                                                          false))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 2, 0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'uumemqi4' /* End */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .subtitle1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                  Container(
                                                    width: 100,
                                                    height: 35,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        setState(() =>
                                                            FFAppState().fil22 =
                                                                true);
                                                      },
                                                      child: Text(
                                                        functions.timestampTOstring(
                                                            calendarSelectedDay4
                                                                ?.start),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            collapsed: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 4,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEEEEEE),
                                              ),
                                            ),
                                            expanded: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if ((FFAppState().fil22 ==
                                                      false))
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 130,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0),
                                                      ),
                                                      child:
                                                          FlutterFlowCalendar(
                                                        color:
                                                            Color(0xFF662D91),
                                                        iconColor:
                                                            Color(0xFF662D91),
                                                        weekFormat: true,
                                                        weekStartsMonday: true,
                                                        initialDate:
                                                            getCurrentTimestamp,
                                                        onChange: (DateTimeRange
                                                            newSelectedDate) {
                                                          setState(() =>
                                                              calendarSelectedDay3 =
                                                                  newSelectedDate);
                                                        },
                                                        titleStyle: TextStyle(
                                                          color:
                                                              Color(0xFF662D91),
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                        dayOfWeekStyle:
                                                            TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                        dateStyle: TextStyle(),
                                                        selectedDateStyle:
                                                            TextStyle(),
                                                        inactiveDateStyle:
                                                            TextStyle(),
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ),
                                                    ),
                                                  if ((FFAppState().fil22 ==
                                                      true))
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 130,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0),
                                                      ),
                                                      child:
                                                          FlutterFlowCalendar(
                                                        color:
                                                            Color(0xFF662D91),
                                                        iconColor:
                                                            Color(0xFF662D91),
                                                        weekFormat: true,
                                                        weekStartsMonday: true,
                                                        onChange: (DateTimeRange
                                                            newSelectedDate) {
                                                          setState(() =>
                                                              calendarSelectedDay4 =
                                                                  newSelectedDate);
                                                        },
                                                        titleStyle: TextStyle(
                                                          color:
                                                              Color(0xFF662D91),
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                        dayOfWeekStyle:
                                                            TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                        dateStyle: TextStyle(),
                                                        selectedDateStyle:
                                                            TextStyle(),
                                                        inactiveDateStyle:
                                                            TextStyle(),
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                            theme: ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: false,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: StreamBuilder<
                                        List<DateEnvoyeAppRecord>>(
                                      stream: queryDateEnvoyeAppRecord(
                                        queryBuilder: (dateEnvoyeAppRecord) => dateEnvoyeAppRecord
                                            .where('type', isEqualTo: 'Externe')
                                            .where('date',
                                                isGreaterThan: functions
                                                            .timestampTOstringmoins(
                                                                calendarSelectedDay3
                                                                    ?.start) !=
                                                        ''
                                                    ? functions
                                                        .timestampTOstringmoins(
                                                            calendarSelectedDay3
                                                                ?.start)
                                                    : null)
                                            .where('date',
                                                isLessThan: functions.timestampTOstringplus(calendarSelectedDay4?.start) != ''
                                                    ? functions.timestampTOstringplus(
                                                        calendarSelectedDay4?.start)
                                                    : null)
                                            .where('index', isEqualTo: 1)
                                            .orderBy('date', descending: true),
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
                                        List<DateEnvoyeAppRecord>
                                            columnDateEnvoyeAppRecordList =
                                            snapshot.data;
                                        return SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: List.generate(
                                                columnDateEnvoyeAppRecordList
                                                    .length, (columnIndex) {
                                              final columnDateEnvoyeAppRecord =
                                                  columnDateEnvoyeAppRecordList[
                                                      columnIndex];
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    columnDateEnvoyeAppRecord
                                                        .date,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                  ),
                                                  StreamBuilder<
                                                      List<BonEnvoyeRecord>>(
                                                    stream:
                                                        queryBonEnvoyeRecord(
                                                      queryBuilder: (bonEnvoyeRecord) =>
                                                          bonEnvoyeRecord
                                                              .where(
                                                                  'date',
                                                                  isEqualTo: columnDateEnvoyeAppRecord
                                                                              .date !=
                                                                          ''
                                                                      ? columnDateEnvoyeAppRecord
                                                                          .date
                                                                      : null)
                                                              .where(
                                                                  'type',
                                                                  isEqualTo:
                                                                      'Externe')
                                                              .orderBy(
                                                                  'heure',
                                                                  descending:
                                                                      true),
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
                                                          columnBonEnvoyeRecordList =
                                                          snapshot.data;
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: List.generate(
                                                            columnBonEnvoyeRecordList
                                                                .length,
                                                            (columnIndex) {
                                                          final columnBonEnvoyeRecord =
                                                              columnBonEnvoyeRecordList[
                                                                  columnIndex];
                                                          return Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            8,
                                                                            2,
                                                                            0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.1,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.1,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0xFF662D91),
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0, 0),
                                                                  child:
                                                                      InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      if (columnBonEnvoyeRecord
                                                                              .statut ==
                                                                          '80') {
                                                                        context
                                                                            .pushNamed(
                                                                          'template_bon2',
                                                                          queryParams:
                                                                              {
                                                                            'bon':
                                                                                serializeParam(columnBonEnvoyeRecord, ParamType.Document),
                                                                          }.withoutNulls,
                                                                          extra: <
                                                                              String,
                                                                              dynamic>{
                                                                            'bon':
                                                                                columnBonEnvoyeRecord,
                                                                          },
                                                                        );
                                                                      } else {
                                                                        if (columnBonEnvoyeRecord.statut ==
                                                                            '90') {
                                                                          context
                                                                              .pushNamed(
                                                                            'template_bon2',
                                                                            queryParams:
                                                                                {
                                                                              'bon': serializeParam(columnBonEnvoyeRecord, ParamType.Document),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              'bon': columnBonEnvoyeRecord,
                                                                            },
                                                                          );
                                                                        } else {
                                                                          if (columnBonEnvoyeRecord.type ==
                                                                              'Retour magasin') {
                                                                            context.pushNamed(
                                                                              'template_bon2',
                                                                              queryParams: {
                                                                                'bon': serializeParam(columnBonEnvoyeRecord, ParamType.Document),
                                                                              }.withoutNulls,
                                                                              extra: <String, dynamic>{
                                                                                'bon': columnBonEnvoyeRecord,
                                                                              },
                                                                            );
                                                                          }
                                                                        }
                                                                      }
                                                                    },
                                                                    child: Text(
                                                                      columnBonEnvoyeRecord
                                                                          .statut,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontSize:
                                                                                20,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Card(
                                                                  clipBehavior:
                                                                      Clip.antiAliasWithSaveLayer,
                                                                  color: Color(
                                                                      0xFFF5F5F5),
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              15),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width,
                                                                      color: Colors
                                                                          .white,
                                                                      child:
                                                                          ExpandableNotifier(
                                                                        initialExpanded:
                                                                            false,
                                                                        child:
                                                                            ExpandablePanel(
                                                                          header:
                                                                              SingleChildScrollView(
                                                                            scrollDirection:
                                                                                Axis.horizontal,
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  columnBonEnvoyeRecord.nom,
                                                                                  maxLines: 1,
                                                                                  style: FlutterFlowTheme.of(context).title1.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: Colors.black,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          collapsed:
                                                                              Container(
                                                                            width:
                                                                                MediaQuery.of(context).size.width,
                                                                            height:
                                                                                20,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0xFFEEEEEE),
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Text(
                                                                                  'STATUT: ${columnBonEnvoyeRecord.intituleStatut}',
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: Color(0x8A000000),
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                ),
                                                                                Text(
                                                                                  columnBonEnvoyeRecord.heure,
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: Color(0x8A000000),
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          expanded:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              SingleChildScrollView(
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: MediaQuery.of(context).size.width,
                                                                                      height: 20,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFFEEEEEE),
                                                                                      ),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Text(
                                                                                            'STATUT: ${columnBonEnvoyeRecord.intituleStatut}',
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  color: Color(0x8A000000),
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            columnBonEnvoyeRecord.heure,
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  color: Color(0x8A000000),
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Text(
                                                                                      'CODE: ${columnBonEnvoyeRecord.code}',
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Color(0x8A000000),
                                                                                          ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                      child: StreamBuilder<UtilisateursRecord>(
                                                                                        stream: UtilisateursRecord.getDocument(columnBonEnvoyeRecord.demandeur),
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
                                                                                          final textUtilisateursRecord = snapshot.data;
                                                                                          return Text(
                                                                                            'ENVOYE PAR: ${textUtilisateursRecord.nom}',
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  color: Color(0x8A000000),
                                                                                                  fontSize: 14,
                                                                                                  fontWeight: FontWeight.normal,
                                                                                                ),
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                      child: Text(
                                                                                        'VALEUR: ${columnBonEnvoyeRecord.cout?.toString()} FCFA',
                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              color: Color(0x8A000000),
                                                                                              fontSize: 16,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'acv1wxzt' /* ARTICLE(S):  */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  color: Color(0x8A000000),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: StreamBuilder<List<ArticleSelectonneRecord>>(
                                                                                            stream: queryArticleSelectonneRecord(
                                                                                              queryBuilder: (articleSelectonneRecord) => articleSelectonneRecord.where('code', isEqualTo: columnBonEnvoyeRecord.code != '' ? columnBonEnvoyeRecord.code : null).where('type', isEqualTo: 'Externe'),
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
                                                                                              List<ArticleSelectonneRecord> rowArticleSelectonneRecordList = snapshot.data;
                                                                                              return SingleChildScrollView(
                                                                                                scrollDirection: Axis.horizontal,
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: List.generate(rowArticleSelectonneRecordList.length, (rowIndex) {
                                                                                                    final rowArticleSelectonneRecord = rowArticleSelectonneRecordList[rowIndex];
                                                                                                    return Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                                      child: Text(
                                                                                                        '(${rowArticleSelectonneRecord.quantiteArticle?.toString()})${rowArticleSelectonneRecord.nomArticle}, ',
                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: 'Poppins',
                                                                                                              color: Color(0x8A000000),
                                                                                                            ),
                                                                                                      ),
                                                                                                    );
                                                                                                  }),
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
                                                                              Stack(
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      if ((columnBonEnvoyeRecord.statut == '90'))
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(0, 0),
                                                                                          child: FlutterFlowIconButton(
                                                                                            borderColor: Colors.transparent,
                                                                                            borderRadius: 30,
                                                                                            borderWidth: 1,
                                                                                            buttonSize: 40,
                                                                                            icon: Icon(
                                                                                              Icons.delete,
                                                                                              color: Color(0xFFFF0000),
                                                                                              size: 20,
                                                                                            ),
                                                                                            onPressed: () {
                                                                                              print('IconButton pressed ...');
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                      if ((columnBonEnvoyeRecord.statut == '70'))
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(0, 0),
                                                                                          child: FlutterFlowIconButton(
                                                                                            borderColor: Colors.transparent,
                                                                                            borderRadius: 30,
                                                                                            borderWidth: 1,
                                                                                            buttonSize: 40,
                                                                                            icon: Icon(
                                                                                              Icons.delete,
                                                                                              color: Color(0xFFFF0000),
                                                                                              size: 20,
                                                                                            ),
                                                                                            onPressed: () {
                                                                                              print('IconButton pressed ...');
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                      if ((columnBonEnvoyeRecord.statut != '90'))
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(0, 0),
                                                                                          child: FlutterFlowIconButton(
                                                                                            borderColor: Colors.transparent,
                                                                                            borderRadius: 30,
                                                                                            borderWidth: 1,
                                                                                            buttonSize: 40,
                                                                                            icon: Icon(
                                                                                              Icons.check,
                                                                                              color: Color(0xFF00FF00),
                                                                                              size: 20,
                                                                                            ),
                                                                                            onPressed: () {
                                                                                              print('IconButton pressed ...');
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                  StreamBuilder<List<DateEnTraitementRecord>>(
                                                                                    stream: queryDateEnTraitementRecord(
                                                                                      queryBuilder: (dateEnTraitementRecord) => dateEnTraitementRecord.where('dateFiltre', isEqualTo: columnBonEnvoyeRecord.dateFiltre).where('demandeur', isEqualTo: columnBonEnvoyeRecord.demandeur).where('nature', isEqualTo: 'app'),
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
                                                                                      List<DateEnTraitementRecord> rowDateEnTraitementRecordList = snapshot.data;
                                                                                      final rowDateEnTraitementRecord = rowDateEnTraitementRecordList.isNotEmpty ? rowDateEnTraitementRecordList.first : null;
                                                                                      return Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          if ((columnBonEnvoyeRecord.statut == '70'))
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0),
                                                                                              child: StreamBuilder<List<DateRejeteValideurRecord>>(
                                                                                                stream: queryDateRejeteValideurRecord(
                                                                                                  queryBuilder: (dateRejeteValideurRecord) => dateRejeteValideurRecord.where('date', isEqualTo: dateTimeFormat('yMMMd', getCurrentTimestamp) != '' ? dateTimeFormat('yMMMd', getCurrentTimestamp) : null).where('rejeteur', isEqualTo: currentUserReference).where('nature', isEqualTo: 'app'),
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
                                                                                                  List<DateRejeteValideurRecord> iconButtonDateRejeteValideurRecordList = snapshot.data;
                                                                                                  final iconButtonDateRejeteValideurRecord = iconButtonDateRejeteValideurRecordList.isNotEmpty ? iconButtonDateRejeteValideurRecordList.first : null;
                                                                                                  return FlutterFlowIconButton(
                                                                                                    borderColor: Colors.transparent,
                                                                                                    borderRadius: 30,
                                                                                                    borderWidth: 1,
                                                                                                    buttonSize: 40,
                                                                                                    icon: Icon(
                                                                                                      Icons.delete,
                                                                                                      color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                      size: 20,
                                                                                                    ),
                                                                                                    onPressed: () async {
                                                                                                      final bonEnvoyeUpdateData = createBonEnvoyeRecordData(
                                                                                                        statut: '90',
                                                                                                        intituleStatut: 'rejeté',
                                                                                                        valideur: currentUserReference,
                                                                                                        dateValideur: dateTimeFormat('yMMMd', getCurrentTimestamp),
                                                                                                        heureValideur: dateTimeFormat('Hm', getCurrentTimestamp),
                                                                                                        jourValideur: dateTimeFormat('EEEE', getCurrentTimestamp),
                                                                                                        anneeValideur: dateTimeFormat('yQQQ', getCurrentTimestamp),
                                                                                                        dateFiltre2: getCurrentTimestamp,
                                                                                                      );
                                                                                                      await columnBonEnvoyeRecord.reference.update(bonEnvoyeUpdateData);
                                                                                                      if (iconButtonDateRejeteValideurRecord != null) {
                                                                                                        final dateRejeteValideurUpdateData = {
                                                                                                          'bonRejete': FieldValue.increment(1.0),
                                                                                                          'coutRejete': FieldValue.increment(iconButtonDateRejeteValideurRecord.coutRejete),
                                                                                                        };
                                                                                                        await iconButtonDateRejeteValideurRecord.reference.update(dateRejeteValideurUpdateData);
                                                                                                      } else {
                                                                                                        final dateRejeteValideurCreateData = createDateRejeteValideurRecordData(
                                                                                                          date: dateTimeFormat('yMMMd', getCurrentTimestamp),
                                                                                                          rejeteur: currentUserReference,
                                                                                                          bonRejete: 1.0,
                                                                                                          coutRejete: columnBonEnvoyeRecord.cout,
                                                                                                          nature: 'app',
                                                                                                          dateFiltre: getCurrentTimestamp,
                                                                                                        );
                                                                                                        await DateRejeteValideurRecord.collection.doc().set(dateRejeteValideurCreateData);
                                                                                                      }

                                                                                                      if (rowDateEnTraitementRecord != null) {
                                                                                                        final dateEnTraitementUpdateData = {
                                                                                                          'bonEncours': FieldValue.increment(functions.negative(1.0)),
                                                                                                          'coutEncours': FieldValue.increment(functions.negative(rowDateEnTraitementRecord.coutEncours)),
                                                                                                        };
                                                                                                        await rowDateEnTraitementRecord.reference.update(dateEnTraitementUpdateData);
                                                                                                      }
                                                                                                    },
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                            ),
                                                                                          if ((columnBonEnvoyeRecord.statut == '70'))
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0),
                                                                                              child: StreamBuilder<List<DateEnvoyeValideurRecord>>(
                                                                                                stream: queryDateEnvoyeValideurRecord(
                                                                                                  queryBuilder: (dateEnvoyeValideurRecord) => dateEnvoyeValideurRecord.where('date', isEqualTo: dateTimeFormat('yMMMd', getCurrentTimestamp) != '' ? dateTimeFormat('yMMMd', getCurrentTimestamp) : null).where('valideur', isEqualTo: currentUserReference).where('nature', isEqualTo: 'app'),
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
                                                                                                  List<DateEnvoyeValideurRecord> iconButtonDateEnvoyeValideurRecordList = snapshot.data;
                                                                                                  final iconButtonDateEnvoyeValideurRecord = iconButtonDateEnvoyeValideurRecordList.isNotEmpty ? iconButtonDateEnvoyeValideurRecordList.first : null;
                                                                                                  return FlutterFlowIconButton(
                                                                                                    borderColor: Colors.transparent,
                                                                                                    borderRadius: 30,
                                                                                                    borderWidth: 1,
                                                                                                    buttonSize: 40,
                                                                                                    icon: Icon(
                                                                                                      Icons.check,
                                                                                                      color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                      size: 20,
                                                                                                    ),
                                                                                                    onPressed: () async {
                                                                                                      final bonEnvoyeUpdateData = createBonEnvoyeRecordData(
                                                                                                        statut: '50',
                                                                                                        intituleStatut: 'approuvé',
                                                                                                        valideur: currentUserReference,
                                                                                                        dateValideur: dateTimeFormat('yMMMd', getCurrentTimestamp),
                                                                                                        heureValideur: dateTimeFormat('Hm', getCurrentTimestamp),
                                                                                                        jourValideur: dateTimeFormat('EEEE', getCurrentTimestamp),
                                                                                                        anneeValideur: dateTimeFormat('yQQQ', getCurrentTimestamp),
                                                                                                        dateFiltre2: getCurrentTimestamp,
                                                                                                      );
                                                                                                      await columnBonEnvoyeRecord.reference.update(bonEnvoyeUpdateData);
                                                                                                      if (iconButtonDateEnvoyeValideurRecord != null) {
                                                                                                        final dateEnvoyeValideurUpdateData = {
                                                                                                          'bonValide': FieldValue.increment(1.0),
                                                                                                          'coutValide': FieldValue.increment(iconButtonDateEnvoyeValideurRecord.coutValide),
                                                                                                        };
                                                                                                        await iconButtonDateEnvoyeValideurRecord.reference.update(dateEnvoyeValideurUpdateData);
                                                                                                      } else {
                                                                                                        final dateEnvoyeValideurCreateData = createDateEnvoyeValideurRecordData(
                                                                                                          date: dateTimeFormat('yMMMd', getCurrentTimestamp),
                                                                                                          valideur: currentUserReference,
                                                                                                          bonValide: 1.0,
                                                                                                          coutValide: columnBonEnvoyeRecord.cout,
                                                                                                          nature: 'app',
                                                                                                          dateFiltre: getCurrentTimestamp,
                                                                                                        );
                                                                                                        await DateEnvoyeValideurRecord.collection.doc().set(dateEnvoyeValideurCreateData);
                                                                                                      }

                                                                                                      if (rowDateEnTraitementRecord != null) {
                                                                                                        final dateEnTraitementUpdateData = {
                                                                                                          'bonEncours': FieldValue.increment(functions.negative(1.0)),
                                                                                                          'coutEncours': FieldValue.increment(functions.negative(rowDateEnTraitementRecord.coutEncours)),
                                                                                                        };
                                                                                                        await rowDateEnTraitementRecord.reference.update(dateEnTraitementUpdateData);
                                                                                                      }
                                                                                                    },
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                            ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          theme:
                                                                              ExpandableThemeData(
                                                                            tapHeaderToExpand:
                                                                                true,
                                                                            tapBodyToExpand:
                                                                                true,
                                                                            tapBodyToCollapse:
                                                                                true,
                                                                            headerAlignment:
                                                                                ExpandablePanelHeaderAlignment.center,
                                                                            hasIcon:
                                                                                true,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          );
                                                        }),
                                                      );
                                                    },
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
      },
    );
  }
}
