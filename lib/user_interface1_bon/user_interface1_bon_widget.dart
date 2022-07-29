import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInterface1BonWidget extends StatefulWidget {
  const UserInterface1BonWidget({
    Key key,
    this.bon,
  }) : super(key: key);

  final BonEnAttenteRecord bon;

  @override
  _UserInterface1BonWidgetState createState() =>
      _UserInterface1BonWidgetState();
}

class _UserInterface1BonWidgetState extends State<UserInterface1BonWidget> {
  DateTimeRange calendarSelectedDay1;
  DateTimeRange calendarSelectedDay2;
  String dropDownValue1;
  TextEditingController textController1;
  TextEditingController textController2;
  String dropDownValue2;
  TextEditingController textController3;
  var resultscan = '';
  DateTimeRange calendarSelectedDay3;
  DateTimeRange calendarSelectedDay4;
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
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
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
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
            userInterface1BonArticleSelectonneRecordList = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Color(0xFF662D91),
            automaticallyImplyLeading: true,
            title: Text(
              FFLocalizations.of(context).getText(
                '2dt27bbd' /* STOCKApp */,
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
            ],
            centerTitle: false,
            elevation: 10,
          ),
          backgroundColor: Colors.white,
          drawer: StreamBuilder<List<ArticlesRecord>>(
            stream: queryArticlesRecord(),
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
              List<ArticlesRecord> drawerArticlesRecordList = snapshot.data;
              return Container(
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF00FF00),
                                      fontSize: 35,
                                    ),
                              ),
                            ),
                            AuthUserStreamWidget(
                              child: Text(
                                valueOrDefault(
                                    currentUserDocument?.fonction, ''),
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
                                            currentUserDocument?.fonction,
                                            '') ==
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
                                      'siy5tdfb' /* BONS */,
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
                                      'hgeg4d4u' /* ARTICLES */,
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
                                    'user_interface1_stat',
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
                                      'vdo3a2ek' /* STATISTIQUES */,
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
                                      '0yfcdnks' /* PARAMETRES */,
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
                                  context.pushNamedAuth(
                                      'check_password', mounted);
                                },
                                child: ListTile(
                                  leading: Icon(
                                    Icons.close,
                                    color: Colors.black,
                                  ),
                                  title: Text(
                                    FFLocalizations.of(context).getText(
                                      '79ecy4gf' /* DECONNEXION */,
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
              );
            },
          ),
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
                    Align(
                      alignment: AlignmentDirectional(-0.04, -0.97),
                      child: StreamBuilder<List<BonEnAttenteRecord>>(
                        stream: queryBonEnAttenteRecord(
                          queryBuilder: (bonEnAttenteRecord) =>
                              bonEnAttenteRecord
                                  .where('demandeur',
                                      isEqualTo: currentUserReference)
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                            );
                          }
                          List<BonEnAttenteRecord> badgeBonEnAttenteRecordList =
                              snapshot.data;
                          return Badge(
                            badgeContent: Text(
                              badgeBonEnAttenteRecordList.length.toString(),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                            ),
                            showBadge: badgeBonEnAttenteRecordList.length >= 1,
                            shape: BadgeShape.circle,
                            badgeColor:
                                FlutterFlowTheme.of(context).primaryColor,
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
                      child: StreamBuilder<List<DateEnvoyeRecord>>(
                        stream: queryDateEnvoyeRecord(
                          queryBuilder: (dateEnvoyeRecord) => dateEnvoyeRecord
                              .where('date',
                                  isEqualTo: dateTimeFormat(
                                              'yMMMd', getCurrentTimestamp) !=
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                            );
                          }
                          List<DateEnvoyeRecord> tabBarDateEnvoyeRecordList =
                              snapshot.data;
                          final tabBarDateEnvoyeRecord =
                              tabBarDateEnvoyeRecordList.isNotEmpty
                                  ? tabBarDateEnvoyeRecordList.first
                                  : null;
                          return DefaultTabController(
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
                                        'eusgg6lt' /* Nouveau */,
                                      ),
                                    ),
                                    Tab(
                                      text: FFLocalizations.of(context).getText(
                                        'hs3hzo6j' /* En attente */,
                                      ),
                                    ),
                                    Tab(
                                      text: FFLocalizations.of(context).getText(
                                        'hkpm2p13' /* Envoyés */,
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: TabBarView(
                                    children: [
                                      Padding(
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
                                                            ? dateTimeFormat(
                                                                'yMMMd',
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
                                                  key: formKey2,
                                                  autovalidateMode:
                                                      AutovalidateMode.disabled,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5, 5, 5, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          10,
                                                                          0,
                                                                          0),
                                                              child: StreamBuilder<
                                                                  List<
                                                                      BonEnAttenteRecord>>(
                                                                stream:
                                                                    queryBonEnAttenteRecord(
                                                                  queryBuilder: (bonEnAttenteRecord) => bonEnAttenteRecord
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
                                                                  List<BonEnAttenteRecord>
                                                                      rowBonEnAttenteRecordList =
                                                                      snapshot
                                                                          .data;
                                                                  final rowBonEnAttenteRecord = rowBonEnAttenteRecordList
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
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'm1g84zg1' /* Code */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      ),
                                                                      StreamBuilder<
                                                                          List<
                                                                              ArticleSelectonneRecord>>(
                                                                        stream:
                                                                            queryArticleSelectonneRecord(
                                                                          queryBuilder: (articleSelectonneRecord) => articleSelectonneRecord.where('code', isEqualTo: FFAppState().CodifBon != '' ? FFAppState().CodifBon : null).where(
                                                                              'nature',
                                                                              isEqualTo: 'com'),
                                                                          singleRecord:
                                                                              true,
                                                                        ),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
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
                                                                              iconButtonArticleSelectonneRecordList =
                                                                              snapshot.data;
                                                                          final iconButtonArticleSelectonneRecord = iconButtonArticleSelectonneRecordList.isNotEmpty
                                                                              ? iconButtonArticleSelectonneRecordList.first
                                                                              : null;
                                                                          return FlutterFlowIconButton(
                                                                            borderColor:
                                                                                Colors.transparent,
                                                                            borderRadius:
                                                                                30,
                                                                            borderWidth:
                                                                                1,
                                                                            buttonSize:
                                                                                40,
                                                                            icon:
                                                                                Icon(
                                                                              Icons.autorenew,
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                              size: 15,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              if (iconButtonArticleSelectonneRecord != null) {
                                                                                final articleSelectonneUpdateData = createArticleSelectonneRecordData(
                                                                                  code: FFAppState().CodifBon,
                                                                                );
                                                                                await iconButtonArticleSelectonneRecord.reference.update(articleSelectonneUpdateData);

                                                                                final bonEnAttenteUpdateData = createBonEnAttenteRecordData(
                                                                                  code: FFAppState().CodifBon,
                                                                                );
                                                                                await rowBonEnAttenteRecord.reference.update(bonEnAttenteUpdateData);
                                                                              } else {
                                                                                setState(() => FFAppState().CodifBon = random_data.randomString(
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
                                                                () => setState(
                                                                    () {}),
                                                              ),
                                                              readOnly: true,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                isDense: true,
                                                                hintText:
                                                                    FFAppState()
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
                                                                suffixIcon:
                                                                    textController1
                                                                            .text
                                                                            .isNotEmpty
                                                                        ? InkWell(
                                                                            onTap: () =>
                                                                                setState(
                                                                              () => textController1?.clear(),
                                                                            ),
                                                                            child:
                                                                                Icon(
                                                                              Icons.clear,
                                                                              color: Color(0xFF757575),
                                                                              size: 22,
                                                                            ),
                                                                          )
                                                                        : null,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                                      .fromSTEB(
                                                                          10,
                                                                          10,
                                                                          0,
                                                                          0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'fic6ickp' /* Intitulé */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
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
                                                                () => setState(
                                                                    () {}),
                                                              ),
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                isDense: true,
                                                                hintText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'y2f22en0' /* the enter voucher name */,
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
                                                                              () => textController2?.clear(),
                                                                            ),
                                                                            child:
                                                                                Icon(
                                                                              Icons.clear,
                                                                              color: Color(0xFF757575),
                                                                              size: 22,
                                                                            ),
                                                                          )
                                                                        : null,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                                if (val ==
                                                                        null ||
                                                                    val.isEmpty) {
                                                                  return FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'dgdlv9y7' /* Field is required */,
                                                                  );
                                                                }
                                                                if (val.length <
                                                                    6) {
                                                                  return FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '20fwf8zb' /* at least than 6 characters */,
                                                                  );
                                                                }

                                                                return null;
                                                              },
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          20,
                                                                          0,
                                                                          0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '5sxijxyu' /* Priorité */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            FlutterFlowDropDown(
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'nykwyiur' /* 0 */,
                                                                ),
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'kg18jtjq' /* 1 */,
                                                                ),
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'p0ws2nr5' /* 2 */,
                                                                ),
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'qzxcfppc' /* 3 */,
                                                                ),
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'hq75oxdu' /* 4 */,
                                                                ),
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'igr6135c' /* 5 */,
                                                                ),
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '9v9uyr7e' /* 6 */,
                                                                )
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      dropDownValue1 =
                                                                          val),
                                                              width:
                                                                  MediaQuery.of(
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
                                                                            FontStyle.italic,
                                                                      ),
                                                              hintText:
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                'uawpp0r2' /* Please select */,
                                                              ),
                                                              fillColor:
                                                                  Colors.white,
                                                              elevation: 2,
                                                              borderColor: Color(
                                                                  0xFF662D91),
                                                              borderWidth: 0,
                                                              borderRadius: 0,
                                                              margin:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          4,
                                                                          8,
                                                                          4),
                                                              hidesUnderline:
                                                                  true,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 20, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rtfyf5jo' /* Article */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                StreamBuilder<
                                                    List<ArticlesRecord>>(
                                                  stream: queryArticlesRecord(
                                                    queryBuilder:
                                                        (articlesRecord) =>
                                                            articlesRecord
                                                                .orderBy('nom'),
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
                                                        formArticlesRecordList =
                                                        snapshot.data;
                                                    return Form(
                                                      key: formKey1,
                                                      autovalidateMode:
                                                          AutovalidateMode
                                                              .disabled,
                                                      child: StreamBuilder<
                                                          List<ArticlesRecord>>(
                                                        stream:
                                                            queryArticlesRecord(
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
                                                          List<ArticlesRecord>
                                                              containerArticlesRecordList =
                                                              snapshot.data;
                                                          // Return an empty Container when the document does not exist.
                                                          if (snapshot
                                                              .data.isEmpty) {
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
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
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
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    width: 100,
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        0.05,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x00FFFFFF),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF662D91),
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        FlutterFlowDropDown(
                                                                      options: formArticlesRecordList
                                                                          .map((e) =>
                                                                              e.nom)
                                                                          .toList()
                                                                          .toList(),
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => dropDownValue2 = val),
                                                                      width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width,
                                                                      height:
                                                                          MediaQuery.of(context).size.height *
                                                                              1,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                Colors.black,
                                                                          ),
                                                                      hintText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        '8z8kabih' /* Please select... */,
                                                                      ),
                                                                      fillColor:
                                                                          Colors
                                                                              .white,
                                                                      elevation:
                                                                          2,
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderWidth:
                                                                          0,
                                                                      borderRadius:
                                                                          0,
                                                                      margin: EdgeInsetsDirectional
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
                                                                        Border
                                                                            .all(
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
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      hintText: containerArticlesRecord
                                                                          .quantite
                                                                          ?.toString(),
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            const BorderRadius.only(
                                                                          topLeft:
                                                                              Radius.circular(4.0),
                                                                          topRight:
                                                                              Radius.circular(4.0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            const BorderRadius.only(
                                                                          topLeft:
                                                                              Radius.circular(4.0),
                                                                          topRight:
                                                                              Radius.circular(4.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    keyboardType:
                                                                        TextInputType
                                                                            .number,
                                                                    validator:
                                                                        (val) {
                                                                      if (val ==
                                                                              null ||
                                                                          val.isEmpty) {
                                                                        return FFLocalizations.of(context)
                                                                            .getText(
                                                                          'zl3x25ss' /* Field is required */,
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
                                                                            isEqualTo: dropDownValue2 != ''
                                                                                ? dropDownValue2
                                                                                : null)
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
                                                                        containerArticleSelectonneRecordList =
                                                                        snapshot
                                                                            .data;
                                                                    final containerArticleSelectonneRecord = containerArticleSelectonneRecordList
                                                                            .isNotEmpty
                                                                        ? containerArticleSelectonneRecordList
                                                                            .first
                                                                        : null;
                                                                    return Container(
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          0.12,
                                                                      height: MediaQuery.of(context)
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
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          if (formKey1.currentState == null ||
                                                                              !formKey1.currentState.validate()) {
                                                                            return;
                                                                          }

                                                                          if (dropDownValue2 ==
                                                                              null) {
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  content: Text('Aucun article selectionné'),
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

                                                                          if (FFAppState().CodifBon !=
                                                                              '\"\"') {
                                                                            if (FFAppState().CodifBon !=
                                                                                FFAppState().PreCodifBon) {
                                                                              setState(() => FFAppState().AddQty = double.parse(textController3.text));
                                                                              if (containerArticlesRecord.quantite >= FFAppState().AddQty) {
                                                                                final articleSelectonneCreateData = createArticleSelectonneRecordData(
                                                                                  code: FFAppState().CodifBon,
                                                                                  nomArticle: dropDownValue2,
                                                                                  quantiteArticle: double.parse(textController3.text),
                                                                                  demandeur: currentUserReference,
                                                                                  nature: 'com',
                                                                                );
                                                                                await ArticleSelectonneRecord.collection.doc().set(articleSelectonneCreateData);
                                                                                setState(() => FFAppState().montant = 0.0);
                                                                                setState(() => FFAppState().montant = functions.multiply(FFAppState().montant, FFAppState().AddQty, containerArticlesRecord.prixUnitaire));
                                                                                setState(() {
                                                                                  textController3?.clear();
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
                                                                              if (containerArticleSelectonneRecord != null) {
                                                                                setState(() => FFAppState().AddQty = double.parse(textController3.text));
                                                                                if (containerArticlesRecord.quantite >= FFAppState().AddQty) {
                                                                                  final articleSelectonneUpdateData = {
                                                                                    'quantite_article': FieldValue.increment(FFAppState().AddQty),
                                                                                  };
                                                                                  await containerArticleSelectonneRecord.reference.update(articleSelectonneUpdateData);
                                                                                  setState(() => FFAppState().montant = functions.multiply(FFAppState().montant, FFAppState().AddQty, containerArticlesRecord.prixUnitaire));
                                                                                  setState(() {
                                                                                    textController3?.clear();
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
                                                                                setState(() => FFAppState().AddQty = double.parse(textController3.text));
                                                                                if (containerArticlesRecord.quantite >= FFAppState().AddQty) {
                                                                                  final articleSelectonneCreateData = createArticleSelectonneRecordData(
                                                                                    code: FFAppState().CodifBon,
                                                                                    nomArticle: dropDownValue2,
                                                                                    quantiteArticle: double.parse(textController3.text),
                                                                                    demandeur: currentUserReference,
                                                                                    nature: 'com',
                                                                                  );
                                                                                  await ArticleSelectonneRecord.collection.doc().set(articleSelectonneCreateData);
                                                                                  setState(() => FFAppState().montant = functions.multiply(FFAppState().montant, FFAppState().AddQty, containerArticlesRecord.prixUnitaire));
                                                                                  setState(() {
                                                                                    textController3?.clear();
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

                                                                            setState(() =>
                                                                                FFAppState().PreCodifBon = FFAppState().CodifBon);
                                                                          } else {
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  content: Text('code invalide'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                      child: Text('Ok'),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            );
                                                                            setState(() =>
                                                                                FFAppState().PreCodifBon = FFAppState().CodifBon);
                                                                          }
                                                                        },
                                                                        text: FFLocalizations.of(context)
                                                                            .getText(
                                                                          's65gwf83' /* Add */,
                                                                        ),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              130,
                                                                          height:
                                                                              40,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryColor,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .subtitle2
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: Colors.white,
                                                                              ),
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Colors.transparent,
                                                                            width:
                                                                                1,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(12),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.12,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      0.05,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0, 0),
                                                                  child: StreamBuilder<
                                                                      List<
                                                                          ArticleSelectonneRecord>>(
                                                                    stream:
                                                                        queryArticleSelectonneRecord(
                                                                      queryBuilder: (articleSelectonneRecord) => articleSelectonneRecord
                                                                          .where(
                                                                              'nature',
                                                                              isEqualTo:
                                                                                  'com')
                                                                          .where(
                                                                              'code',
                                                                              isEqualTo: FFAppState().CodifBon != '' ? FFAppState().CodifBon : null)
                                                                          .where('nom_article', isEqualTo: functions.articleScan(resultscan, formArticlesRecordList.toList()) != '' ? functions.articleScan(resultscan, formArticlesRecordList.toList()) : null),
                                                                      singleRecord:
                                                                          true,
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
                                                                            Colors.black,
                                                                        borderRadius:
                                                                            100,
                                                                        borderWidth:
                                                                            1,
                                                                        buttonSize:
                                                                            60,
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .qr_code_scanner,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              25,
                                                                        ),
                                                                        onPressed:
                                                                            () async {
                                                                          if (FFAppState().CodifBon !=
                                                                              '\"\"') {
                                                                            resultscan =
                                                                                await FlutterBarcodeScanner.scanBarcode(
                                                                              '#C62828', // scanning line color
                                                                              FFLocalizations.of(context).getText(
                                                                                '7x2id5zr' /* Cancel */,
                                                                              ), // cancel button text
                                                                              true, // whether to show the flash icon
                                                                              ScanMode.QR,
                                                                            );

                                                                            if (functions.articleScan(resultscan, formArticlesRecordList.toList()) !=
                                                                                '0') {
                                                                              if (FFAppState().CodifBon != FFAppState().PreCodifBon) {
                                                                                final articleSelectonneCreateData = createArticleSelectonneRecordData(
                                                                                  code: FFAppState().CodifBon,
                                                                                  nomArticle: functions.articleScan(resultscan, formArticlesRecordList.toList()),
                                                                                  quantiteArticle: 1.0,
                                                                                  demandeur: currentUserReference,
                                                                                  nature: 'com',
                                                                                );
                                                                                await ArticleSelectonneRecord.collection.doc().set(articleSelectonneCreateData);
                                                                                setState(() => FFAppState().montant = 0.0);
                                                                                setState(() => FFAppState().montant = functions.multiply(FFAppState().montant, 1.0, functions.articleScan1(resultscan, formArticlesRecordList.toList())));
                                                                              } else {
                                                                                if (iconButtonArticleSelectonneRecord != null) {
                                                                                  final articleSelectonneUpdateData = {
                                                                                    'quantite_article': FieldValue.increment(1.0),
                                                                                  };
                                                                                  await iconButtonArticleSelectonneRecord.reference.update(articleSelectonneUpdateData);
                                                                                  setState(() => FFAppState().montant = functions.multiply(FFAppState().montant, 1.0, functions.articleScan1(resultscan, formArticlesRecordList.toList())));
                                                                                } else {
                                                                                  final articleSelectonneCreateData = createArticleSelectonneRecordData(
                                                                                    code: FFAppState().CodifBon,
                                                                                    nomArticle: functions.articleScan(resultscan, formArticlesRecordList.toList()),
                                                                                    quantiteArticle: 1.0,
                                                                                    demandeur: currentUserReference,
                                                                                    nature: 'com',
                                                                                  );
                                                                                  await ArticleSelectonneRecord.collection.doc().set(articleSelectonneCreateData);
                                                                                  setState(() => FFAppState().montant = functions.multiply(FFAppState().montant, 1.0, functions.articleScan1(resultscan, formArticlesRecordList.toList())));
                                                                                }
                                                                              }
                                                                            }
                                                                            setState(() =>
                                                                                FFAppState().PreCodifBon = FFAppState().CodifBon);
                                                                          } else {
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  content: Text('code invalide'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                      child: Text('Ok'),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            );
                                                                            setState(() =>
                                                                                FFAppState().PreCodifBon = FFAppState().CodifBon);
                                                                          }

                                                                          setState(
                                                                              () {});
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
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
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
                                                    child: StreamBuilder<
                                                        List<
                                                            ArticleSelectonneRecord>>(
                                                      stream:
                                                          queryArticleSelectonneRecord(
                                                        queryBuilder: (articleSelectonneRecord) =>
                                                            articleSelectonneRecord
                                                                .where('code',
                                                                    isEqualTo: FFAppState().CodifBon !=
                                                                            ''
                                                                        ? FFAppState()
                                                                            .CodifBon
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
                                                        List<ArticleSelectonneRecord>
                                                            columnArticleSelectonneRecordList =
                                                            snapshot.data;
                                                        return SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
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
                                                                        .fromSTEB(
                                                                            0,
                                                                            5,
                                                                            0,
                                                                            0),
                                                                child: Badge(
                                                                  badgeContent:
                                                                      Text(
                                                                    columnArticleSelectonneRecord
                                                                        .quantiteArticle
                                                                        .toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                  ),
                                                                  showBadge:
                                                                      true,
                                                                  shape:
                                                                      BadgeShape
                                                                          .circle,
                                                                  badgeColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                  elevation: 4,
                                                                  padding: EdgeInsetsDirectional
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
                                                                  toAnimate:
                                                                      true,
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1,
                                                                            0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              15,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        columnArticleSelectonneRecord
                                                                            .nomArticle,
                                                                        style: FlutterFlowTheme.of(context)
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
                                                StreamBuilder<
                                                    List<DateEnvoyeRecord>>(
                                                  stream: queryDateEnvoyeRecord(
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
                                                        .where('index',
                                                            isEqualTo: 1)
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
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
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
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        StreamBuilder<
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
                                                              children: [
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
                                                                          50,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .delete,
                                                                        color: Color(
                                                                            0xFF662D91),
                                                                        size:
                                                                            30,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        setState(
                                                                            () {
                                                                          textController2
                                                                              ?.clear();
                                                                          textController1
                                                                              ?.clear();
                                                                          textController3
                                                                              ?.clear();
                                                                        });
                                                                        setState(() =>
                                                                            FFAppState().CodifBon =
                                                                                '\"\"');
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
                                                                          50,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .save_sharp,
                                                                        color: Color(
                                                                            0xFF662D91),
                                                                        size:
                                                                            30,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        if (formKey2.currentState ==
                                                                                null ||
                                                                            !formKey2.currentState.validate()) {
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
                                                                                content: Text('Quel est le niveau de priorité de votre bon?'),
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

                                                                        if (userInterface1BonArticleSelectonneRecordList.length >
                                                                            0) {
                                                                          if (rowBonEnAttenteRecord !=
                                                                              null) {
                                                                            final bonEnAttenteUpdateData =
                                                                                {
                                                                              ...createBonEnAttenteRecordData(
                                                                                nom: textController2.text,
                                                                                priorite: dropDownValue1,
                                                                                date: dateTimeFormat('yMMMd', getCurrentTimestamp),
                                                                                heure: dateTimeFormat('Hm', getCurrentTimestamp),
                                                                                dateFiltre: getCurrentTimestamp,
                                                                              ),
                                                                              'liste_articles': userInterface1BonArticleSelectonneRecordList.map((e) => e.reference).toList(),
                                                                            };
                                                                            await rowBonEnAttenteRecord.reference.update(bonEnAttenteUpdateData);
                                                                          } else {
                                                                            final bonEnAttenteCreateData =
                                                                                {
                                                                              ...createBonEnAttenteRecordData(
                                                                                nom: textController2.text,
                                                                                code: FFAppState().CodifBon,
                                                                                statut: 00,
                                                                                priorite: dropDownValue1,
                                                                                heure: dateTimeFormat('Hm', getCurrentTimestamp),
                                                                                demandeur: currentUserReference,
                                                                                nature: 'com',
                                                                                dateFiltre: getCurrentTimestamp,
                                                                                date: dateTimeFormat('yMMMd', getCurrentTimestamp),
                                                                              ),
                                                                              'liste_articles': userInterface1BonArticleSelectonneRecordList.map((e) => e.reference).toList(),
                                                                            };
                                                                            await BonEnAttenteRecord.collection.doc().set(bonEnAttenteCreateData);
                                                                          }

                                                                          setState(() => FFAppState().DateEnAttente = dateTimeFormat(
                                                                              'yMMMd',
                                                                              getCurrentTimestamp));
                                                                          if (!(stackDateEnAttenteRecord !=
                                                                              null)) {
                                                                            final dateEnAttenteCreateData =
                                                                                createDateEnAttenteRecordData(
                                                                              date: FFAppState().DateEnAttente,
                                                                              demandeur: currentUserReference,
                                                                              nature: 'com',
                                                                              dateFiltre: getCurrentTimestamp,
                                                                            );
                                                                            await DateEnAttenteRecord.collection.doc().set(dateEnAttenteCreateData);
                                                                          }
                                                                          setState(() =>
                                                                              FFAppState().PreDateEnAttente = FFAppState().DateEnAttente);
                                                                          setState(
                                                                              () {
                                                                            textController1?.clear();
                                                                            textController2?.clear();
                                                                            textController3?.clear();
                                                                          });
                                                                          setState(() =>
                                                                              FFAppState().CodifBon = '\"\"');
                                                                        } else {
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                content: Text('aucun article sélectionné'),
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
                                                                    return FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30,
                                                                      borderWidth:
                                                                          1,
                                                                      buttonSize:
                                                                          50,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .send,
                                                                        color: Color(
                                                                            0xFF662D91),
                                                                        size:
                                                                            30,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        if (formKey2.currentState ==
                                                                                null ||
                                                                            !formKey2.currentState.validate()) {
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
                                                                                content: Text('Quel est le niveau de priorité de votre bon?'),
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

                                                                        if (iconButtonArticleSelectonneRecordList.length >
                                                                            0) {
                                                                          final bonEnvoyeCreateData =
                                                                              createBonEnvoyeRecordData(
                                                                            nom:
                                                                                textController2.text,
                                                                            code:
                                                                                FFAppState().CodifBon,
                                                                            statut:
                                                                                '70',
                                                                            priorite:
                                                                                dropDownValue1,
                                                                            heure:
                                                                                dateTimeFormat('Hm', getCurrentTimestamp),
                                                                            cout:
                                                                                FFAppState().montant,
                                                                            demandeur:
                                                                                currentUserReference,
                                                                            intituleStatut:
                                                                                'en cours de traitement ',
                                                                            jour:
                                                                                dateTimeFormat('EEEE', getCurrentTimestamp),
                                                                            annee:
                                                                                dateTimeFormat('yQQQ', getCurrentTimestamp),
                                                                            nature:
                                                                                'com',
                                                                            dateFiltre:
                                                                                getCurrentTimestamp,
                                                                            date:
                                                                                dateTimeFormat('yMMMd', getCurrentTimestamp),
                                                                          );
                                                                          await BonEnvoyeRecord
                                                                              .collection
                                                                              .doc()
                                                                              .set(bonEnvoyeCreateData);
                                                                          setState(() => FFAppState().DateEnvoye = dateTimeFormat(
                                                                              'yMMMd',
                                                                              getCurrentTimestamp));
                                                                          if (tabBarDateEnvoyeRecord !=
                                                                              null) {
                                                                            final dateEnvoyeUpdateData =
                                                                                {
                                                                              ...createDateEnvoyeRecordData(
                                                                                date: '',
                                                                              ),
                                                                              'bonCree': FieldValue.increment(1.0),
                                                                              'coutCree': FieldValue.increment(FFAppState().montant),
                                                                            };
                                                                            await tabBarDateEnvoyeRecord.reference.update(dateEnvoyeUpdateData);
                                                                          } else {
                                                                            if (columnDateEnvoyeRecord !=
                                                                                null) {
                                                                              final dateEnvoyeCreateData = createDateEnvoyeRecordData(
                                                                                demandeur: currentUserReference,
                                                                                bonCree: 1.0,
                                                                                coutCree: FFAppState().montant,
                                                                                nature: 'com',
                                                                                dateFiltre: getCurrentTimestamp,
                                                                                date: dateTimeFormat('yMMMd', getCurrentTimestamp),
                                                                                index: 0,
                                                                              );
                                                                              await DateEnvoyeRecord.collection.doc().set(dateEnvoyeCreateData);
                                                                            } else {
                                                                              final dateEnvoyeCreateData = createDateEnvoyeRecordData(
                                                                                demandeur: currentUserReference,
                                                                                bonCree: 1.0,
                                                                                coutCree: FFAppState().montant,
                                                                                nature: 'com',
                                                                                dateFiltre: getCurrentTimestamp,
                                                                                date: dateTimeFormat('yMMMd', getCurrentTimestamp),
                                                                                index: 1,
                                                                              );
                                                                              await DateEnvoyeRecord.collection.doc().set(dateEnvoyeCreateData);
                                                                            }
                                                                          }

                                                                          if (columnDateEnTraitementRecord !=
                                                                              null) {
                                                                            final dateEnTraitementUpdateData =
                                                                                {
                                                                              'coutEncours': FieldValue.increment(FFAppState().montant),
                                                                              'bonEncours': FieldValue.increment(1.0),
                                                                            };
                                                                            await columnDateEnTraitementRecord.reference.update(dateEnTraitementUpdateData);
                                                                          } else {
                                                                            final dateEnTraitementCreateData =
                                                                                createDateEnTraitementRecordData(
                                                                              demandeur: currentUserReference,
                                                                              bonEncours: 1.0,
                                                                              coutEncours: FFAppState().montant,
                                                                              nature: 'com',
                                                                              dateFiltre: getCurrentTimestamp,
                                                                              date: dateTimeFormat('yMMMd', getCurrentTimestamp),
                                                                            );
                                                                            await DateEnTraitementRecord.collection.doc().set(dateEnTraitementCreateData);
                                                                          }

                                                                          setState(() =>
                                                                              FFAppState().PreDateEnvoye = FFAppState().DateEnvoye);
                                                                          setState(
                                                                              () {
                                                                            textController1?.clear();
                                                                            textController2?.clear();
                                                                            textController3?.clear();
                                                                          });
                                                                          setState(() =>
                                                                              FFAppState().CodifBon = '\"\"');
                                                                        } else {
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                content: Text('aucun article sélectionné'),
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
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                        color:
                                                            Color(0xFF662D91),
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFF662D91),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Stack(
                                                            children: [
                                                              if ((FFAppState()
                                                                      .fil11 ==
                                                                  false))
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          2,
                                                                          0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '5mqlktvt' /* Start */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Colors.white,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          decoration:
                                                                              TextDecoration.underline,
                                                                        ),
                                                                  ),
                                                                ),
                                                              if ((FFAppState()
                                                                      .fil11 ==
                                                                  true))
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          2,
                                                                          0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'hg2vl8ul' /* Start */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          decoration:
                                                                              TextDecoration.underline,
                                                                        ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width: 100,
                                                            height: 35,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                            child: InkWell(
                                                              onTap: () async {
                                                                setState(() =>
                                                                    FFAppState()
                                                                            .fil11 =
                                                                        false);
                                                              },
                                                              child: Text(
                                                                functions.timestampTOstring(
                                                                    calendarSelectedDay1
                                                                        ?.start),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ),
                                                          ),
                                                          Stack(
                                                            children: [
                                                              if ((FFAppState()
                                                                      .fil11 ==
                                                                  true))
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          0,
                                                                          2,
                                                                          0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '8zn7fnqc' /* End */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Colors.white,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          decoration:
                                                                              TextDecoration.underline,
                                                                        ),
                                                                  ),
                                                                ),
                                                              if ((FFAppState()
                                                                      .fil11 ==
                                                                  false))
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          0,
                                                                          2,
                                                                          0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '2d60f9wo' /* End */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          decoration:
                                                                              TextDecoration.underline,
                                                                        ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width: 100,
                                                            height: 35,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                            child: InkWell(
                                                              onTap: () async {
                                                                setState(() =>
                                                                    FFAppState()
                                                                            .fil11 =
                                                                        true);
                                                              },
                                                              child: Text(
                                                                functions.timestampTOstring(
                                                                    calendarSelectedDay2
                                                                        ?.start),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    collapsed: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 4,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFEEEEEE),
                                                      ),
                                                    ),
                                                    expanded:
                                                        SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if ((FFAppState()
                                                                  .fil11 ==
                                                              false))
                                                            Container(
                                                              width:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                              height: 130,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0),
                                                              ),
                                                              child:
                                                                  FlutterFlowCalendar(
                                                                color: Color(
                                                                    0xFF662D91),
                                                                iconColor: Color(
                                                                    0xFF662D91),
                                                                weekFormat:
                                                                    true,
                                                                weekStartsMonday:
                                                                    true,
                                                                initialDate:
                                                                    getCurrentTimestamp,
                                                                onChange:
                                                                    (DateTimeRange
                                                                        newSelectedDate) {
                                                                  setState(() =>
                                                                      calendarSelectedDay1 =
                                                                          newSelectedDate);
                                                                },
                                                                titleStyle:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF662D91),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                ),
                                                                dayOfWeekStyle:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                                dateStyle:
                                                                    TextStyle(),
                                                                selectedDateStyle:
                                                                    TextStyle(),
                                                                inactiveDateStyle:
                                                                    TextStyle(),
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ),
                                                            ),
                                                          if ((FFAppState()
                                                                  .fil11 ==
                                                              true))
                                                            Container(
                                                              width:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                              height: 130,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0),
                                                              ),
                                                              child:
                                                                  FlutterFlowCalendar(
                                                                color: Color(
                                                                    0xFF662D91),
                                                                iconColor: Color(
                                                                    0xFF662D91),
                                                                weekFormat:
                                                                    true,
                                                                weekStartsMonday:
                                                                    true,
                                                                onChange:
                                                                    (DateTimeRange
                                                                        newSelectedDate) {
                                                                  setState(() =>
                                                                      calendarSelectedDay2 =
                                                                          newSelectedDate);
                                                                },
                                                                titleStyle:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF662D91),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                ),
                                                                dayOfWeekStyle:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                                dateStyle:
                                                                    TextStyle(),
                                                                selectedDateStyle:
                                                                    TextStyle(),
                                                                inactiveDateStyle:
                                                                    TextStyle(),
                                                                locale: FFLocalizations.of(
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
                                                List<DateEnAttenteRecord>>(
                                              stream: queryDateEnAttenteRecord(
                                                queryBuilder: (dateEnAttenteRecord) => dateEnAttenteRecord
                                                    .where('demandeur',
                                                        isEqualTo:
                                                            currentUserReference)
                                                    .where('nature',
                                                        isEqualTo: 'com')
                                                    .where('date',
                                                        isGreaterThan: functions.timestampTOstringmoins(calendarSelectedDay1?.start) != ''
                                                            ? functions.timestampTOstringmoins(
                                                                calendarSelectedDay1
                                                                    ?.start)
                                                            : null)
                                                    .where('date',
                                                        isLessThan: functions.timestampTOstringplus(
                                                                    calendarSelectedDay2
                                                                        ?.start) !=
                                                                ''
                                                            ? functions.timestampTOstringplus(
                                                                calendarSelectedDay2
                                                                    ?.start)
                                                            : null)
                                                    .orderBy('date', descending: true),
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
                                                List<DateEnAttenteRecord>
                                                    columnDateEnAttenteRecordList =
                                                    snapshot.data;
                                                return SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .stretch,
                                                    children: List.generate(
                                                        columnDateEnAttenteRecordList
                                                            .length,
                                                        (columnIndex) {
                                                      final columnDateEnAttenteRecord =
                                                          columnDateEnAttenteRecordList[
                                                              columnIndex];
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            columnDateEnAttenteRecord
                                                                .date,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                ),
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BonEnAttenteRecord>>(
                                                            stream:
                                                                queryBonEnAttenteRecord(
                                                              queryBuilder: (bonEnAttenteRecord) => bonEnAttenteRecord
                                                                  .where('date',
                                                                      isEqualTo: columnDateEnAttenteRecord.date !=
                                                                              ''
                                                                          ? columnDateEnAttenteRecord
                                                                              .date
                                                                          : null)
                                                                  .where(
                                                                      'nature',
                                                                      isEqualTo:
                                                                          'com')
                                                                  .orderBy(
                                                                      'heure',
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
                                                                  columnBonEnAttenteRecordList =
                                                                  snapshot.data;
                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: List.generate(
                                                                    columnBonEnAttenteRecordList
                                                                        .length,
                                                                    (columnIndex) {
                                                                  final columnBonEnAttenteRecord =
                                                                      columnBonEnAttenteRecordList[
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
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            8,
                                                                            2,
                                                                            0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              MediaQuery.of(context).size.width * 0.1,
                                                                          height:
                                                                              MediaQuery.of(context).size.width * 0.1,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0xFF662D91),
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          alignment: AlignmentDirectional(
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  '0tugyruh' /* 00 */,
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      fontSize: 20,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Card(
                                                                          clipBehavior:
                                                                              Clip.antiAliasWithSaveLayer,
                                                                          color:
                                                                              Color(0xFFF5F5F5),
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.only(
                                                                              bottomLeft: Radius.circular(0),
                                                                              bottomRight: Radius.circular(15),
                                                                              topLeft: Radius.circular(0),
                                                                              topRight: Radius.circular(0),
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                                                children: [
                                                                                  Text(
                                                                                    columnBonEnAttenteRecord.nom,
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          fontSize: 25,
                                                                                          fontWeight: FontWeight.w600,
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 5),
                                                                                    child: StreamBuilder<List<BonEnAttenteRecord>>(
                                                                                      stream: queryBonEnAttenteRecord(
                                                                                        queryBuilder: (bonEnAttenteRecord) => bonEnAttenteRecord.where('code', isEqualTo: columnBonEnAttenteRecord.code != '' ? columnBonEnAttenteRecord.code : null).where('nature', isEqualTo: 'com'),
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
                                                                                        List<BonEnAttenteRecord> iconButtonBonEnAttenteRecordList = snapshot.data;
                                                                                        final iconButtonBonEnAttenteRecord = iconButtonBonEnAttenteRecordList.isNotEmpty ? iconButtonBonEnAttenteRecordList.first : null;
                                                                                        return FlutterFlowIconButton(
                                                                                          borderColor: Colors.transparent,
                                                                                          borderRadius: 30,
                                                                                          borderWidth: 1,
                                                                                          buttonSize: 30,
                                                                                          icon: FaIcon(
                                                                                            FontAwesomeIcons.pen,
                                                                                            color: FlutterFlowTheme.of(context).primaryColor,
                                                                                            size: 20,
                                                                                          ),
                                                                                          onPressed: () async {
                                                                                            context.pushNamed(
                                                                                              'user_interface1_bonattente',
                                                                                              queryParams: {
                                                                                                'bon': serializeParam(iconButtonBonEnAttenteRecord, ParamType.Document),
                                                                                              }.withoutNulls,
                                                                                              extra: <String, dynamic>{
                                                                                                'bon': iconButtonBonEnAttenteRecord,
                                                                                              },
                                                                                            );
                                                                                          },
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text(
                                                                                    'CODE: ${columnBonEnAttenteRecord.code}',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1,
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                    child: Text(
                                                                                      columnBonEnAttenteRecord.heure,
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                        color:
                                                            Color(0xFF662D91),
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFF662D91),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Stack(
                                                            children: [
                                                              if ((FFAppState()
                                                                      .fil12 ==
                                                                  false))
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          2,
                                                                          0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'm3tmvp78' /* Start */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Colors.white,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          decoration:
                                                                              TextDecoration.underline,
                                                                        ),
                                                                  ),
                                                                ),
                                                              if ((FFAppState()
                                                                      .fil12 ==
                                                                  true))
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          2,
                                                                          0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '2idhxy6l' /* Start */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          decoration:
                                                                              TextDecoration.underline,
                                                                        ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width: 100,
                                                            height: 35,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                            child: InkWell(
                                                              onTap: () async {
                                                                setState(() =>
                                                                    FFAppState()
                                                                            .fil12 =
                                                                        false);
                                                              },
                                                              child: Text(
                                                                functions.timestampTOstring(
                                                                    calendarSelectedDay3
                                                                        ?.start),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ),
                                                          ),
                                                          Stack(
                                                            children: [
                                                              if ((FFAppState()
                                                                      .fil12 ==
                                                                  true))
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          0,
                                                                          2,
                                                                          0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'e30sczj9' /* End */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Colors.white,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          decoration:
                                                                              TextDecoration.underline,
                                                                        ),
                                                                  ),
                                                                ),
                                                              if ((FFAppState()
                                                                      .fil12 ==
                                                                  false))
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          0,
                                                                          2,
                                                                          0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'soi6edxl' /* End */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          decoration:
                                                                              TextDecoration.underline,
                                                                        ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width: 100,
                                                            height: 35,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                            child: InkWell(
                                                              onTap: () async {
                                                                setState(() =>
                                                                    FFAppState()
                                                                            .fil12 =
                                                                        true);
                                                              },
                                                              child: Text(
                                                                functions.timestampTOstring(
                                                                    calendarSelectedDay4
                                                                        ?.start),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    collapsed: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 4,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFEEEEEE),
                                                      ),
                                                    ),
                                                    expanded:
                                                        SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if ((FFAppState()
                                                                  .fil12 ==
                                                              false))
                                                            Container(
                                                              width:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                              height: 130,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0),
                                                              ),
                                                              child:
                                                                  FlutterFlowCalendar(
                                                                color: Color(
                                                                    0xFF662D91),
                                                                iconColor: Color(
                                                                    0xFF662D91),
                                                                weekFormat:
                                                                    true,
                                                                weekStartsMonday:
                                                                    true,
                                                                initialDate:
                                                                    getCurrentTimestamp,
                                                                onChange:
                                                                    (DateTimeRange
                                                                        newSelectedDate) {
                                                                  setState(() =>
                                                                      calendarSelectedDay3 =
                                                                          newSelectedDate);
                                                                },
                                                                titleStyle:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF662D91),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                ),
                                                                dayOfWeekStyle:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                                dateStyle:
                                                                    TextStyle(),
                                                                selectedDateStyle:
                                                                    TextStyle(),
                                                                inactiveDateStyle:
                                                                    TextStyle(),
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ),
                                                            ),
                                                          if ((FFAppState()
                                                                  .fil12 ==
                                                              true))
                                                            Container(
                                                              width:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                              height: 130,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0),
                                                              ),
                                                              child:
                                                                  FlutterFlowCalendar(
                                                                color: Color(
                                                                    0xFF662D91),
                                                                iconColor: Color(
                                                                    0xFF662D91),
                                                                weekFormat:
                                                                    true,
                                                                weekStartsMonday:
                                                                    true,
                                                                onChange:
                                                                    (DateTimeRange
                                                                        newSelectedDate) {
                                                                  setState(() =>
                                                                      calendarSelectedDay4 =
                                                                          newSelectedDate);
                                                                },
                                                                titleStyle:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF662D91),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                ),
                                                                dayOfWeekStyle:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                                dateStyle:
                                                                    TextStyle(),
                                                                selectedDateStyle:
                                                                    TextStyle(),
                                                                inactiveDateStyle:
                                                                    TextStyle(),
                                                                locale: FFLocalizations.of(
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
                                                List<DateEnvoyeRecord>>(
                                              stream: queryDateEnvoyeRecord(
                                                queryBuilder: (dateEnvoyeRecord) => dateEnvoyeRecord
                                                    .where('demandeur',
                                                        isEqualTo:
                                                            currentUserReference)
                                                    .where('nature',
                                                        isEqualTo: 'com')
                                                    .where('date',
                                                        isGreaterThan:
                                                            functions.timestampTOstringmoins(calendarSelectedDay3?.start) != ''
                                                                ? functions.timestampTOstringmoins(
                                                                    calendarSelectedDay3
                                                                        ?.start)
                                                                : null)
                                                    .where('date',
                                                        isLessThan: functions.timestampTOstringplus(
                                                                    calendarSelectedDay4
                                                                        ?.start) !=
                                                                ''
                                                            ? functions
                                                                .timestampTOstringplus(
                                                                    calendarSelectedDay4?.start)
                                                            : null)
                                                    .orderBy('date', descending: true),
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
                                                return SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .stretch,
                                                    children: List.generate(
                                                        columnDateEnvoyeRecordList
                                                            .length,
                                                        (columnIndex) {
                                                      final columnDateEnvoyeRecord =
                                                          columnDateEnvoyeRecordList[
                                                              columnIndex];
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            columnDateEnvoyeRecord
                                                                .date,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                ),
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BonEnvoyeRecord>>(
                                                            stream:
                                                                queryBonEnvoyeRecord(
                                                              queryBuilder: (bonEnvoyeRecord) => bonEnvoyeRecord
                                                                  .where('date',
                                                                      isEqualTo: columnDateEnvoyeRecord.date !=
                                                                              ''
                                                                          ? columnDateEnvoyeRecord
                                                                              .date
                                                                          : null)
                                                                  .where(
                                                                      'demandeur',
                                                                      isEqualTo:
                                                                          currentUserReference)
                                                                  .where(
                                                                      'nature',
                                                                      isEqualTo:
                                                                          'com')
                                                                  .orderBy(
                                                                      'heure',
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
                                                                  columnBonEnvoyeRecordList =
                                                                  snapshot.data;
                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
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
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            8,
                                                                            2,
                                                                            0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              MediaQuery.of(context).size.width * 0.1,
                                                                          height:
                                                                              MediaQuery.of(context).size.width * 0.1,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0xFF662D91),
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          alignment: AlignmentDirectional(
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              if (columnBonEnvoyeRecord.statut == '80') {
                                                                                context.pushNamed(
                                                                                  'template_bon',
                                                                                  queryParams: {
                                                                                    'bon': serializeParam(columnBonEnvoyeRecord, ParamType.Document),
                                                                                  }.withoutNulls,
                                                                                  extra: <String, dynamic>{
                                                                                    'bon': columnBonEnvoyeRecord,
                                                                                  },
                                                                                );
                                                                              } else {
                                                                                if (columnBonEnvoyeRecord.statut == '90') {
                                                                                  context.pushNamed(
                                                                                    'template_bon',
                                                                                    queryParams: {
                                                                                      'bon': serializeParam(columnBonEnvoyeRecord, ParamType.Document),
                                                                                    }.withoutNulls,
                                                                                    extra: <String, dynamic>{
                                                                                      'bon': columnBonEnvoyeRecord,
                                                                                    },
                                                                                  );
                                                                                }
                                                                              }
                                                                            },
                                                                            child:
                                                                                Text(
                                                                              columnBonEnvoyeRecord.statut,
                                                                              textAlign: TextAlign.center,
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 20,
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Card(
                                                                          clipBehavior:
                                                                              Clip.antiAliasWithSaveLayer,
                                                                          color:
                                                                              Color(0xFFF5F5F5),
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.only(
                                                                              bottomLeft: Radius.circular(0),
                                                                              bottomRight: Radius.circular(15),
                                                                              topLeft: Radius.circular(0),
                                                                              topRight: Radius.circular(0),
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(),
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.of(context).size.width,
                                                                              color: Colors.white,
                                                                              child: ExpandableNotifier(
                                                                                initialExpanded: false,
                                                                                child: ExpandablePanel(
                                                                                  header: SingleChildScrollView(
                                                                                    scrollDirection: Axis.horizontal,
                                                                                    child: Row(
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
                                                                                  collapsed: Container(
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
                                                                                  expanded: Column(
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
                                                                                        child: Text(
                                                                                          'PRIORITE: ${columnBonEnvoyeRecord.priorite}',
                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                fontFamily: 'Poppins',
                                                                                                color: Color(0x8A000000),
                                                                                                fontSize: 14,
                                                                                                fontWeight: FontWeight.normal,
                                                                                              ),
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
                                                                                                '5muf43rq' /* ARTICLE(S):  */,
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
                                                                                  theme: ExpandableThemeData(
                                                                                    tapHeaderToExpand: true,
                                                                                    tapBodyToExpand: true,
                                                                                    tapBodyToCollapse: true,
                                                                                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                                                                                    hasIcon: true,
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
                          );
                        },
                      ),
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
