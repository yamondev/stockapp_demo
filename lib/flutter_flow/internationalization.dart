import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['en', 'fr'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String enText = '',
    String frText = '',
  }) =>
      [enText, frText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'cyyuntr0': {
      'en': 'WELCOME TO STOCKAPP',
      'fr': 'BIENVENUE SUR STOCKAPP',
    },
    'n4292es0': {
      'en': 'create an account',
      'fr': 'créer un compte',
    },
    '4qxyeyb4': {
      'en': 'sign in',
      'fr': 's\'identifier',
    },
    '4wbk560o': {
      'en': 'Home',
      'fr': 'Domicile',
    },
  },
  // check_password
  {
    '5sdk7c5x': {
      'en': 'Sign in',
      'fr': 'S\'identifier',
    },
    'bd0480ju': {
      'en': 'create an account',
      'fr': 'créer un compte',
    },
    '6luhhwi5': {
      'en': 'your password',
      'fr': 'votre mot de passe',
    },
    'i071t0jb': {
      'en': '',
      'fr': '',
    },
    '58l8e6kl': {
      'en': 'your email',
      'fr': 'votre e-mail',
    },
    'mvwpc0ba': {
      'en': 'enter your address',
      'fr': 'entrez votre adresse',
    },
    'k0q3vk7n': {
      'en': 'start',
      'fr': 'démarrer',
    },
    'w5q3eppn': {
      'en': 'Product by All Vision In One',
      'fr': 'Produit par All Vision In One',
    },
    'tcs9f3ia': {
      'en': 'Field is required',
      'fr': '',
    },
    '987hpkt4': {
      'en': 'Field is required',
      'fr': '',
    },
    '71u9eo9d': {
      'en': 'Home',
      'fr': 'Domicile',
    },
  },
  // create_account
  {
    'v2uajse8': {
      'en': 'sign up',
      'fr': 'S\'inscrire',
    },
    'qnx2qc9p': {
      'en': 'name',
      'fr': 'Nom',
    },
    '85dad0km': {
      'en': 'enter your name',
      'fr': 'entrez votre nom',
    },
    '10g4i1rj': {
      'en': 'password',
      'fr': 'mot de passe',
    },
    'q133p375': {
      'en': 'enter your password',
      'fr': 'tapez votre mot de passe',
    },
    'x623ign4': {
      'en': 'confirm password',
      'fr': 'Confirmez le mot de passe',
    },
    '3k0u8ule': {
      'en': 'enter your password',
      'fr': 'tapez votre mot de passe',
    },
    'pa1g6xzx': {
      'en': 'function',
      'fr': 'fonction',
    },
    'o29re4h0': {
      'en': 'general director',
      'fr': 'directeur général',
    },
    'rjizerps': {
      'en': 'maintainer',
      'fr': 'maintenancier',
    },
    't6vnrqp1': {
      'en': 'storekeeper',
      'fr': 'magasinier',
    },
    'qo13bteu': {
      'en': 'others',
      'fr': 'autres',
    },
    '8yu678j6': {
      'en': 'Please select...',
      'fr': 'Veuillez sélectionner...',
    },
    'bl2yanh1': {
      'en': 'trade',
      'fr': 'corps de métier',
    },
    'koc9kjd3': {
      'en': 'trade 1',
      'fr': 'corps de métier 1',
    },
    'rygta3n1': {
      'en': 'trade 2',
      'fr': 'corps de métier 2',
    },
    'ez3mucuq': {
      'en': 'trade 3',
      'fr': 'corps de métier 3',
    },
    '0j4lef10': {
      'en': 'trade 4',
      'fr': 'corps de métier 4',
    },
    'bepuy6lu': {
      'en': 'trade 5',
      'fr': 'corps de métier 5',
    },
    'orzytyfe': {
      'en': 'Please select...',
      'fr': 'Veuillez sélectionner...',
    },
    'n4un6ebc': {
      'en': 'email',
      'fr': 'e-mail',
    },
    'ej02cx3i': {
      'en': 'enter your address',
      'fr': 'entrez votre adresse',
    },
    'u0190nb2': {
      'en': 'save',
      'fr': 'sauvegarder',
    },
    'rbcp7cdl': {
      'en': 'Field is required',
      'fr': '',
    },
    'tv0l8vqr': {
      'en': 'at least than 3 characters',
      'fr': 'au moins 3 caractères',
    },
    'cide9tlu': {
      'en': 'Field is required',
      'fr': '',
    },
    '5p6lm9ep': {
      'en': 'at least than 6 characters',
      'fr': 'au moins 6 caractères',
    },
    'i52f7439': {
      'en': 'Field is required',
      'fr': '',
    },
    '1tiejvpv': {
      'en': 'at least than 6 characters',
      'fr': 'au moins 6 caractères',
    },
    'e2ycjmzx': {
      'en': 'Field is required',
      'fr': '',
    },
    'wmsebekf': {
      'en': 'Home',
      'fr': 'Domicile',
    },
  },
  // user_interface1_art
  {
    'eryt4inu': {
      'en': 'STOCKApp',
      'fr': 'STOCKApp',
    },
    'u9ox3k8t': {
      'en': 'BONS',
      'fr': 'BONS',
    },
    '5b6fy3xc': {
      'en': 'ARTICLES',
      'fr': 'ARTICLES',
    },
    'w9zx82my': {
      'en': 'STATISTIQUES',
      'fr': 'STATISTIQUES',
    },
    '6gxq6tkm': {
      'en': 'PARAMETRES',
      'fr': 'PARAMÈTRES',
    },
    'hh8q30dp': {
      'en': 'DECONNEXION',
      'fr': 'DÉCONNEXION',
    },
    '6qranbru': {
      'en': 'Save articles',
      'fr': 'Articles enregistrés',
    },
    '7kukkhmc': {
      'en': 'ARTICLES',
      'fr': 'ARTICLES',
    },
    '40in3nky': {
      'en': 'Qté',
      'fr': 'Qté',
    },
    'wmj8tiwl': {
      'en': 'CODE',
      'fr': 'CODE',
    },
    'dgd3c2wj': {
      'en': 'P.U',
      'fr': 'P.U',
    },
    'sxtjy3fx': {
      'en': 'Home',
      'fr': 'Domicile',
    },
  },
  // user_interface3_art
  {
    'xrm486gd': {
      'en': 'STOCKApp',
      'fr': 'STOCKApp',
    },
    'rz9sljd1': {
      'en': 'BONS',
      'fr': 'BONS',
    },
    'qkpspilj': {
      'en': 'ARTICLES',
      'fr': 'ARTICLES',
    },
    '16y0ab72': {
      'en': 'STATISTIQUES',
      'fr': 'STATISTIQUES',
    },
    'r96e67kg': {
      'en': 'PARAMETRES',
      'fr': 'PARAMÈTRES',
    },
    'a7upjeag': {
      'en': 'DECONNEXION',
      'fr': 'DÉCONNEXION',
    },
    '2nulbc5e': {
      'en': 'Save articles',
      'fr': 'Articles enregistrés',
    },
    'mo8e8iox': {
      'en': 'ARTICLES',
      'fr': 'ARTICLES',
    },
    'ztzu9x8q': {
      'en': 'Qté',
      'fr': 'Qté',
    },
    'f9gjt9r5': {
      'en': 'CODE',
      'fr': 'CODE',
    },
    's86b2v5j': {
      'en': 'P.U',
      'fr': 'P.U',
    },
    '4zfp5ayv': {
      'en': 'New article',
      'fr': 'Nouvel article',
    },
    'ltwn751w': {
      'en': 'code',
      'fr': 'code',
    },
    'wecb1ym0': {
      'en': 'name',
      'fr': 'nom',
    },
    'lhvh8jz7': {
      'en': 'enter the name of article',
      'fr': 'entrer le nom de l\'article',
    },
    '9gmvojpz': {
      'en': 'quantity',
      'fr': 'quantité',
    },
    '41eqa2qi': {
      'en': 'enter the stock',
      'fr': 'entrer le stock',
    },
    'bmzhgnkx': {
      'en': 'unit price',
      'fr': 'prix unitaire',
    },
    '7v805vh2': {
      'en': 'enter the price',
      'fr': 'entrer le prix',
    },
    'jzis0e50': {
      'en': 'Field is required',
      'fr': '',
    },
    'n6xldy3m': {
      'en': 'at least than 2 characters',
      'fr': 'au moins 2 caractères',
    },
    'yxpgcs2v': {
      'en': 'Field is required',
      'fr': '',
    },
    'ccz73ccf': {
      'en': 'at least than 1 character',
      'fr': 'au moins 1 caractère',
    },
    '00x39pph': {
      'en': 'Field is required',
      'fr': '',
    },
    'n7vez0wj': {
      'en': 'at least than 1 character',
      'fr': 'au moins 1 caractère',
    },
    'kd8tk9kk': {
      'en': 'Field is required',
      'fr': '',
    },
    'g9ihb3vh': {
      'en': 'at least than 4 characters',
      'fr': 'au moins 4 caractères',
    },
    'q98r8axx': {
      'en': 'Home',
      'fr': 'Domicile',
    },
  },
  // user_interface1_bon
  {
    'siy5tdfb': {
      'en': 'BONS',
      'fr': 'BONS',
    },
    'hgeg4d4u': {
      'en': 'ARTICLES',
      'fr': 'ARTICLES',
    },
    'vdo3a2ek': {
      'en': 'STATISTIQUES',
      'fr': 'STATISTIQUES',
    },
    '0yfcdnks': {
      'en': 'PARAMETRES',
      'fr': 'PARAMÈTRES',
    },
    '79ecy4gf': {
      'en': 'DECONNEXION',
      'fr': 'DÉCONNEXION',
    },
    'eusgg6lt': {
      'en': 'Nouveau',
      'fr': 'Nouveau',
    },
    'm1g84zg1': {
      'en': 'Code',
      'fr': 'Code',
    },
    'fic6ickp': {
      'en': 'Intitulé',
      'fr': 'Intitulé',
    },
    'y2f22en0': {
      'en': 'the enter voucher name',
      'fr': 'le entrez nom du bon',
    },
    '5sxijxyu': {
      'en': 'Priorité',
      'fr': 'Priorité',
    },
    'z9afcab3': {
      'en': '',
      'fr': '',
    },
    'nykwyiur': {
      'en': '0',
      'fr': '0',
    },
    'kg18jtjq': {
      'en': '1',
      'fr': '1',
    },
    'p0ws2nr5': {
      'en': '2',
      'fr': '2',
    },
    'qzxcfppc': {
      'en': '3',
      'fr': '3',
    },
    'hq75oxdu': {
      'en': '4',
      'fr': '4',
    },
    'igr6135c': {
      'en': '5',
      'fr': '5',
    },
    '9v9uyr7e': {
      'en': '6',
      'fr': '6',
    },
    'uawpp0r2': {
      'en': 'Please select',
      'fr': 'Veuillez sélectionner',
    },
    'gbjuyoc5': {
      'en': 'Field is required',
      'fr': '',
    },
    'dgdlv9y7': {
      'en': 'Field is required',
      'fr': '',
    },
    '20fwf8zb': {
      'en': 'at least than 6 characters',
      'fr': 'au moins 6 caractères',
    },
    'rtfyf5jo': {
      'en': 'Article',
      'fr': 'Article',
    },
    'wn7qtn8s': {
      'en': 'Option 1',
      'fr': '',
    },
    '8z8kabih': {
      'en': 'Please select...',
      'fr': 'Veuillez sélectionner...',
    },
    's65gwf83': {
      'en': 'Add',
      'fr': 'Ajouter',
    },
    '7x2id5zr': {
      'en': 'Cancel',
      'fr': 'Retour',
    },
    'zl3x25ss': {
      'en': 'Field is required',
      'fr': 'Champ requis',
    },
    'hs3hzo6j': {
      'en': 'En attente',
      'fr': 'En attente',
    },
    '5mqlktvt': {
      'en': 'Start',
      'fr': 'Début',
    },
    'hg2vl8ul': {
      'en': 'Start',
      'fr': 'Début',
    },
    '8zn7fnqc': {
      'en': 'End',
      'fr': 'Fin',
    },
    '2d60f9wo': {
      'en': 'End',
      'fr': 'Fin',
    },
    '0tugyruh': {
      'en': '00',
      'fr': '00',
    },
    'hkpm2p13': {
      'en': 'Envoyés',
      'fr': 'envoyés',
    },
    'm3tmvp78': {
      'en': 'Start',
      'fr': 'Début',
    },
    '2idhxy6l': {
      'en': 'Start',
      'fr': 'Début',
    },
    'e30sczj9': {
      'en': 'End',
      'fr': 'Fin',
    },
    'soi6edxl': {
      'en': 'End',
      'fr': 'Fin',
    },
    '5muf43rq': {
      'en': 'ARTICLE(S): ',
      'fr': 'ARTICLE(S): ',
    },
    '2dt27bbd': {
      'en': 'STOCKApp',
      'fr': 'STOCKApp',
    },
    'u0gbameb': {
      'en': 'Home',
      'fr': 'Domicile',
    },
  },
  // user_interface2_bon
  {
    '5majplrf': {
      'en': 'STOCKApp',
      'fr': 'STOCKApp',
    },
    'mmmyy926': {
      'en': 'BONS',
      'fr': 'BONS',
    },
    'ruzteo05': {
      'en': 'ARTICLES',
      'fr': 'ARTICLES',
    },
    'j2qzff8q': {
      'en': 'STATISTIQUES',
      'fr': 'STATISTIQUES',
    },
    '3hs9avle': {
      'en': 'PARAMETRES',
      'fr': 'PARAMÈTRES',
    },
    '82ncferd': {
      'en': 'DECONNEXION',
      'fr': 'DÉCONNEXION',
    },
    'jljzlnlp': {
      'en': 'Ordered',
      'fr': 'Commande',
    },
    '0zdy667m': {
      'en': 'Start',
      'fr': 'Début',
    },
    'cpvd7ge6': {
      'en': 'Start',
      'fr': 'Début',
    },
    't1c9x5to': {
      'en': 'End',
      'fr': 'Fin',
    },
    'juesydu4': {
      'en': 'End',
      'fr': 'Fin',
    },
    '1pfy8e2c': {
      'en': 'ARTICLE(S): ',
      'fr': 'ARTICLE(S): ',
    },
    'zm08rgax': {
      'en': 'Supply',
      'fr': 'Approvisionnement',
    },
    '54s4xyuc': {
      'en': 'Start',
      'fr': 'Début',
    },
    'rbmnzviq': {
      'en': 'Start',
      'fr': 'Début',
    },
    'zuamdyx5': {
      'en': 'End',
      'fr': 'Fin',
    },
    'uumemqi4': {
      'en': 'End',
      'fr': 'Fin',
    },
    'acv1wxzt': {
      'en': 'ARTICLE(S): ',
      'fr': 'ARTICLE(S): ',
    },
    '6j4daacq': {
      'en': 'Home',
      'fr': 'Domicile',
    },
  },
  // user_interface3_bon
  {
    'q3uxin41': {
      'en': 'STOCKApp',
      'fr': 'STOCKApp',
    },
    'gb86yg07': {
      'en': 'BONS',
      'fr': 'BONS',
    },
    'ullsruvi': {
      'en': 'ARTICLES',
      'fr': 'ARTICLES',
    },
    '2l8qghhj': {
      'en': 'STATISTIQUES',
      'fr': 'STATISTIQUES',
    },
    'sk9awf5l': {
      'en': 'PARAMETRES',
      'fr': 'PARAMÈTRES',
    },
    'pp2zlu83': {
      'en': 'DECONNEXION',
      'fr': 'DÉCONNEXION',
    },
    'nqnqa9si': {
      'en': 'New',
      'fr': 'Nouveau',
    },
    'piocdjj6': {
      'en': 'Code',
      'fr': 'Code',
    },
    'r6xtx8ki': {
      'en': 'Intitulé',
      'fr': 'Intitulé',
    },
    'z36umhzq': {
      'en': 'the enter voucher name',
      'fr': 'le entrez nom du bon',
    },
    'rqjanmkq': {
      'en': 'Kind',
      'fr': 'Type',
    },
    'd3wjl55e': {
      'en': '',
      'fr': '',
    },
    '2dm09zbp': {
      'en': 'External',
      'fr': 'Externe',
    },
    'jubo25wt': {
      'en': 'Store return',
      'fr': 'Retour magasin',
    },
    '7xyfpq1d': {
      'en': 'Please select',
      'fr': 'Veuillez sélectionner',
    },
    '2mgybgtl': {
      'en': '*Field is required',
      'fr': '*Champs requis',
    },
    'yhxb6xrf': {
      'en': '*Field is required',
      'fr': '*Champs requis',
    },
    '4u0629f5': {
      'en': '',
      'fr': '',
    },
    'ozz4byxo': {
      'en': 'Article',
      'fr': 'Article',
    },
    'kp6j4iye': {
      'en': 'Option 1',
      'fr': '',
    },
    '9t89hn0h': {
      'en': 'Please select...',
      'fr': 'Veuillez sélectionner...',
    },
    'kvryx7i5': {
      'en': 'Add',
      'fr': 'Ajouter',
    },
    'yvk8flgt': {
      'en': 'Field is required',
      'fr': '',
    },
    '44pjfs90': {
      'en': 'Pending',
      'fr': 'En attente',
    },
    '3gsidg2v': {
      'en': 'Start',
      'fr': 'Début',
    },
    'h9fkgmkd': {
      'en': 'Start',
      'fr': 'Début',
    },
    '2ok9oaqk': {
      'en': 'End',
      'fr': 'Fin',
    },
    'hm2tfjjb': {
      'en': 'End',
      'fr': 'Fin',
    },
    'pqmqay19': {
      'en': '00',
      'fr': '00',
    },
    'p83fsnvb': {
      'en': 'Send',
      'fr': 'Envoyés',
    },
    'ji1e1mm6': {
      'en': 'Start',
      'fr': 'Début',
    },
    'mw1zyoej': {
      'en': 'Start',
      'fr': 'Début',
    },
    'jmc16myd': {
      'en': 'End',
      'fr': 'Fin',
    },
    'v33k0rfa': {
      'en': 'End',
      'fr': 'Fin',
    },
    'qyqip4ay': {
      'en': '80',
      'fr': '80',
    },
    'plkksj7f': {
      'en': 'ARTICLE(S): ',
      'fr': 'ARTICLE(S): ',
    },
    '78z923u4': {
      'en': 'Received',
      'fr': 'Reçus',
    },
    'lt7m728d': {
      'en': 'Start',
      'fr': 'Début',
    },
    'mojr0coi': {
      'en': 'Start',
      'fr': 'Début',
    },
    'eyjt65c3': {
      'en': 'End',
      'fr': 'Fin',
    },
    'pvt5zgra': {
      'en': 'End',
      'fr': 'Fin',
    },
    'ny5l6fjt': {
      'en': 'ARTICLE(S): ',
      'fr': 'ARTICLE(S): ',
    },
    '9zifm7ah': {
      'en': 'Home',
      'fr': 'Domicile',
    },
  },
  // template_bon
  {
    '9jyycodr': {
      'en': 'BON DE COMMANDE',
      'fr': 'BON DE COMMANDE',
    },
    'b4j3u0ub': {
      'en': 'TITRE                       :',
      'fr': 'TITRE                       :',
    },
    'uegljd52': {
      'en': 'CODE                      :',
      'fr': 'CODE                      :',
    },
    'vjmvb58n': {
      'en': 'STATUT                  :',
      'fr': 'STATUT                  :',
    },
    '44uzxx17': {
      'en': 'PRIORITE               :',
      'fr': 'PRIORITE               :',
    },
    'wk9ysg2c': {
      'en': 'INITIE PAR             :',
      'fr': 'INITIE PAR             :',
    },
    'davc69uz': {
      'en': 'Le',
      'fr': 'Le',
    },
    'i6810dbr': {
      'en': 'à',
      'fr': 'à',
    },
    'qcdicivd': {
      'en': 'APPROUVE PAR :',
      'fr': 'APPROUVE PAR :',
    },
    'g6icjyfs': {
      'en': 'Le',
      'fr': 'Le',
    },
    'k6m5ip5t': {
      'en': 'à',
      'fr': 'à',
    },
    'vq6xt1or': {
      'en': 'REJETE PAR :',
      'fr': 'REJETE PAR :',
    },
    'a32xpwol': {
      'en': 'Le',
      'fr': 'Le',
    },
    '3o9658hx': {
      'en': 'à',
      'fr': 'à',
    },
    'ia072hg2': {
      'en': 'CLOTURE PAR     :',
      'fr': 'CLOTURE PAR     :',
    },
    'bjtxmr8d': {
      'en': 'Le',
      'fr': 'Le',
    },
    'riv6vvko': {
      'en': 'à',
      'fr': 'à',
    },
    'fdf3s99b': {
      'en': 'CODE',
      'fr': 'CODE',
    },
    'ijm2r3ol': {
      'en': 'DESIGNATION',
      'fr': 'DESIGNATION',
    },
    'k67vetae': {
      'en': 'QTE',
      'fr': 'QTE',
    },
    'v59ksaf0': {
      'en': 'P.U',
      'fr': 'P.U',
    },
    'rvbq16dy': {
      'en': 'TOTAL=',
      'fr': 'TOTAL=',
    },
    'vl078w0p': {
      'en': 'Home',
      'fr': '',
    },
  },
  // user_interface1_para
  {
    'xq2cdubt': {
      'en': 'Home',
      'fr': 'Domicile',
    },
  },
  // user_interface1_stat
  {
    '5avq2bgv': {
      'en': 'STOCKApp',
      'fr': 'STOCKApp',
    },
    '03qkpmuw': {
      'en': 'BONS',
      'fr': 'BONS',
    },
    '7ktj2d2w': {
      'en': 'ARTICLES',
      'fr': 'ARTICLES',
    },
    'kme6kx73': {
      'en': 'STATISTIQUES',
      'fr': 'STATISTIQUES',
    },
    '78jkm2ay': {
      'en': 'PARAMETRES',
      'fr': 'PARAMÈTRES',
    },
    '2p927ukc': {
      'en': 'DECONNEXION',
      'fr': 'DÉCONNEXION',
    },
    'yddishmg': {
      'en': 'A propos des chiffres',
      'fr': 'A propos des chiffres',
    },
    '9ye2xejj': {
      'en': 'created',
      'fr': 'crée(s)',
    },
    'rvov8l00': {
      'en': 'Home',
      'fr': 'Domicile',
    },
  },
  // user_interface2_stat
  {
    'sk2hw3np': {
      'en': 'STOCKApp',
      'fr': 'STOCKApp',
    },
    'yodon1zt': {
      'en': 'BONS',
      'fr': 'BONS',
    },
    '80ve3a2c': {
      'en': 'ARTICLES',
      'fr': 'ARTICLES',
    },
    'blipu4cw': {
      'en': 'STATISTIQUES',
      'fr': 'STATISTIQUES',
    },
    'byf55kap': {
      'en': 'PARAMETRES',
      'fr': 'PARAMÈTRES',
    },
    '0dsio4bu': {
      'en': 'DECONNEXION',
      'fr': 'DÉCONNEXION',
    },
    'nlsnbp4p': {
      'en': 'Ordered',
      'fr': 'Commande',
    },
    'oai7hvzn': {
      'en': 'closed',
      'fr': 'cloturé(s)',
    },
    'y4l7fh95': {
      'en': 'valided',
      'fr': 'validé(s)',
    },
    'hlckpsy8': {
      'en': 'rejected',
      'fr': 'rejeté(s)',
    },
    '7hjqib26': {
      'en': 'Supply',
      'fr': 'Approvionnement',
    },
    'qbe7i5ux': {
      'en': 'closed',
      'fr': 'cloturé(s)',
    },
    'vt1b7gru': {
      'en': 'valided',
      'fr': 'validé(s)',
    },
    'ccdb7dqy': {
      'en': 'rejected',
      'fr': 'rejeté(s)',
    },
    '9l5ue62n': {
      'en': 'Store return',
      'fr': 'Retour magasin',
    },
    '6pr2uuus': {
      'en': 'closed',
      'fr': 'cloturé(s)',
    },
    'y8x93irj': {
      'en': 'Balance sheet',
      'fr': 'Bilan financier',
    },
    '5bus5h3f': {
      'en': 'G',
      'fr': 'G',
    },
    'b5z17ps8': {
      'en': 'T',
      'fr': 'T',
    },
    '9mdwoiwk': {
      'en': 'G',
      'fr': 'G',
    },
    'snrcx3io': {
      'en': 'Stock traffic',
      'fr': 'Traffic du stock',
    },
    '08uupmq3': {
      'en': 'OUT',
      'fr': 'SORTIE',
    },
    'dbrgb7mv': {
      'en': 'IN',
      'fr': 'ENTREE',
    },
    'f7eysk0k': {
      'en': 'Staff performance',
      'fr': 'Performance du personnel',
    },
    'rclfctlu': {
      'en': 'CR',
      'fr': 'CR',
    },
    '2gbnarco': {
      'en': 'NV',
      'fr': 'NV',
    },
    'x0b3y7qp': {
      'en': 'VA',
      'fr': 'VA',
    },
    'enqslyx7': {
      'en': 'RE',
      'fr': 'RE',
    },
    'kz8kar28': {
      'en': 'CL',
      'fr': 'CL',
    },
    'f7qk4eam': {
      'en': 'CR',
      'fr': 'CR',
    },
    'g25ioy6d': {
      'en': 'BON',
      'fr': 'BON',
    },
    'fs9we87f': {
      'en': 'AMOUNT',
      'fr': 'MONTANT',
    },
    'nykpypzl': {
      'en': 'Home',
      'fr': 'Domicile',
    },
  },
  // user_interface3_stat
  {
    '54cieuxf': {
      'en': 'STOCKApp',
      'fr': 'STOCKApp',
    },
    'nju6spst': {
      'en': 'BONS',
      'fr': 'BONS',
    },
    'k34lxipx': {
      'en': 'ARTICLES',
      'fr': 'ARTICLES',
    },
    'tp6ukhrl': {
      'en': 'STATISTIQUES',
      'fr': 'STATISTIQUES',
    },
    'xdp7dv46': {
      'en': 'PARAMETRES',
      'fr': 'PARAMÈTRES',
    },
    '2vty6upy': {
      'en': 'DECONNEXION',
      'fr': 'DÉCONNEXION',
    },
    'hk3jfism': {
      'en': 'Ordered',
      'fr': 'Commande',
    },
    'zxt2mmx9': {
      'en': 'closed',
      'fr': 'cloturé(s)',
    },
    'bvrcjq1r': {
      'en': 'Supply',
      'fr': 'Approvisionnement',
    },
    'nawjvyck': {
      'en': 'created',
      'fr': 'crée(s)',
    },
    'cymeclqn': {
      'en': 'Store return',
      'fr': 'Retour magasin',
    },
    'v5zuerii': {
      'en': 'created',
      'fr': 'crée(s)',
    },
    's2hs7oph': {
      'en': 'Home',
      'fr': 'Domicile',
    },
  },
  // template_bon2
  {
    '8juat4ia': {
      'en': 'BON D\'APPROVISIONNEMENT',
      'fr': 'BON D\'APPROVISIONNEMENT',
    },
    'hib9s9yg': {
      'en': 'BON DE RETOUR MAGASIN',
      'fr': 'BON DE RETOUR MAGASIN',
    },
    '0wpm0cso': {
      'en': 'TITRE                       :',
      'fr': 'TITRE                       :',
    },
    'mt6yl3hp': {
      'en': 'CODE                      :',
      'fr': 'CODE                      :',
    },
    'dpc1vexr': {
      'en': 'STATUT                  :',
      'fr': 'STATUT                  :',
    },
    '9krz7a8o': {
      'en': '80 (terminé)',
      'fr': '80 (terminé)',
    },
    'yof02a9a': {
      'en': 'TYPE                        :',
      'fr': 'TYPE                        :',
    },
    '8jxreqe5': {
      'en': 'INITIE PAR             :',
      'fr': 'INITIE PAR             :',
    },
    '06pm08ow': {
      'en': 'Le',
      'fr': 'Le',
    },
    'osmp5zmp': {
      'en': 'à',
      'fr': 'à',
    },
    'mq1z1ubg': {
      'en': 'APPROUVE PAR :',
      'fr': 'APPROUVE PAR :',
    },
    'zq94tljf': {
      'en': 'Le',
      'fr': 'Le',
    },
    'ua7rubzh': {
      'en': 'à',
      'fr': 'à',
    },
    'd04ocdsx': {
      'en': 'REJETE PAR :',
      'fr': 'REJETE PAR :',
    },
    'ocdprrhc': {
      'en': 'Le',
      'fr': 'Le',
    },
    'vqe840z9': {
      'en': 'à',
      'fr': 'à',
    },
    'mo13uphc': {
      'en': 'CLOTURE PAR     :',
      'fr': 'CLOTURE PAR     :',
    },
    'q3jexoz3': {
      'en': 'Le',
      'fr': 'Le',
    },
    'yrqytban': {
      'en': 'à',
      'fr': 'à',
    },
    'x4f0igi5': {
      'en': 'CLOTURE PAR     :',
      'fr': 'CLOTURE PAR     :',
    },
    '9lc16npp': {
      'en': 'Le',
      'fr': 'Le',
    },
    'z11zq8kp': {
      'en': 'à',
      'fr': 'à',
    },
    '4pqs1z6k': {
      'en': 'CODE',
      'fr': 'CODE',
    },
    'l7aq9fxc': {
      'en': 'DESIGNATION',
      'fr': 'DESIGNATION',
    },
    'pr83p10m': {
      'en': 'QTE',
      'fr': 'QTE',
    },
    'fs5mrvwm': {
      'en': 'P.U',
      'fr': 'P.U',
    },
    'nv9oyabm': {
      'en': 'TOTAL=',
      'fr': 'TOTAL=',
    },
    'txeunbje': {
      'en': 'Home',
      'fr': '',
    },
  },
  // user_interface1_bonattente
  {
    'xk9prnrt': {
      'en': 'Edit',
      'fr': 'Modifier',
    },
    'bd93tnwk': {
      'en': 'Code',
      'fr': 'Code',
    },
    'n2v95s6w': {
      'en': 'Intitulé',
      'fr': 'Intitulé',
    },
    'q6yej57t': {
      'en': 'the enter voucher name',
      'fr': 'le entrez nom du bon',
    },
    'z4ayz83d': {
      'en': 'Priorité',
      'fr': 'Priorité',
    },
    'sclw5hlz': {
      'en': '0',
      'fr': '0',
    },
    '5sdi5ime': {
      'en': '1',
      'fr': '1',
    },
    '7sayughs': {
      'en': '2',
      'fr': '2',
    },
    'j842wnjn': {
      'en': '3',
      'fr': '3',
    },
    'kmwvvh2n': {
      'en': '4',
      'fr': '4',
    },
    'h1v15h2u': {
      'en': '5',
      'fr': '5',
    },
    '8fg5ar71': {
      'en': '6',
      'fr': '6',
    },
    'oo7tbglg': {
      'en': 'Please select',
      'fr': 'Veuillez sélectionner',
    },
    'ylg58bib': {
      'en': 'Field is required',
      'fr': '',
    },
    'qc7i40w7': {
      'en': 'Field is required',
      'fr': '',
    },
    '5ew6xaoh': {
      'en': 'at least than 6 characters',
      'fr': 'au moins 6 caractères',
    },
    '6m86dd1d': {
      'en': 'Article',
      'fr': 'Article',
    },
    'kjhmohwu': {
      'en': 'Option 1',
      'fr': '',
    },
    'co91k3wo': {
      'en': 'Please select...',
      'fr': 'Veuillez sélectionner...',
    },
    '2qfecgkr': {
      'en': 'Add',
      'fr': 'Ajouter',
    },
    'tj3epy3d': {
      'en': 'Field is required',
      'fr': '',
    },
    'ng9w1c4u': {
      'en': 'Home',
      'fr': 'Domicile',
    },
  },
  // user_interface3_bonattente
  {
    'egjkfnc6': {
      'en': 'Edit',
      'fr': 'Modifier',
    },
    'wjk5dd2z': {
      'en': 'Code',
      'fr': 'Code',
    },
    'mgc92aw0': {
      'en': 'Intitulé',
      'fr': 'Intitulé',
    },
    'boker5bu': {
      'en': 'the enter voucher name',
      'fr': 'le entrez nom du bon',
    },
    'monpj98w': {
      'en': 'Kind',
      'fr': 'Type',
    },
    'spchf0pb': {
      'en': 'External',
      'fr': 'Externe',
    },
    'ltkwmh38': {
      'en': 'Store return',
      'fr': 'Retour magasin',
    },
    'e009305a': {
      'en': 'Please select',
      'fr': 'Veuillez sélectionner',
    },
    '5ilnbafi': {
      'en': 'Field is required',
      'fr': '',
    },
    'qx02t417': {
      'en': 'Field is required',
      'fr': '',
    },
    'a0jgdoxl': {
      'en': 'at least than 6 characters',
      'fr': 'au moins 6 caractères',
    },
    'ta3zy97g': {
      'en': 'Article',
      'fr': 'Article',
    },
    'vs6mvwi0': {
      'en': 'Option 1',
      'fr': '',
    },
    'l3z6utvu': {
      'en': 'Please select...',
      'fr': 'Veuillez sélectionner...',
    },
    '9v94jung': {
      'en': 'Add',
      'fr': 'Ajouter',
    },
    'im1sowvj': {
      'en': 'Field is required',
      'fr': '',
    },
    'wz2oorqi': {
      'en': 'Home',
      'fr': 'Domicile',
    },
  },
  // user_interface3_artedit
  {
    'uvvsjkuz': {
      'en': 'Edit',
      'fr': 'Modifier',
    },
    'ley1xyp1': {
      'en': 'BONS',
      'fr': 'BONS',
    },
    '2z5kwfgh': {
      'en': 'ARTICLES',
      'fr': 'ARTICLES',
    },
    'ua0c0qrz': {
      'en': 'STATISTIQUES',
      'fr': 'STATISTIQUES',
    },
    '9vt830ut': {
      'en': 'PARAMETRES',
      'fr': 'PARAMÈTRES',
    },
    'd3l36zns': {
      'en': 'DECONNEXION',
      'fr': 'DÉCONNEXION',
    },
    'sssegsyx': {
      'en': 'code',
      'fr': 'code',
    },
    '1e2fdba4': {
      'en': 'name',
      'fr': 'nom',
    },
    'q27m7gpq': {
      'en': 'quantity',
      'fr': 'quantité',
    },
    'pxdej88a': {
      'en': 'unit price',
      'fr': 'prix unitaire',
    },
    '5rznaj10': {
      'en': 'Field is required',
      'fr': '',
    },
    's5daei47': {
      'en': 'Field is required',
      'fr': '',
    },
    'tx2bvmgf': {
      'en': '*Field is required',
      'fr': '*Champs requis',
    },
    'vg364o06': {
      'en': '*Field is required',
      'fr': '*Champs requis',
    },
    'k9mvang5': {
      'en': 'Home',
      'fr': 'Domicile',
    },
  },
  // Miscellaneous
  {
    'x7pbnftp': {
      'en': '',
      'fr': '',
    },
    'n7hjanuu': {
      'en': '',
      'fr': '',
    },
    'gg1l7nod': {
      'en': '',
      'fr': '',
    },
    '7xx8y0tk': {
      'en': '',
      'fr': '',
    },
    'ftu22blt': {
      'en': '',
      'fr': '',
    },
    'hvwcr798': {
      'en': '',
      'fr': '',
    },
    '8c1uu4ue': {
      'en': '',
      'fr': '',
    },
    'ojfv05do': {
      'en': '',
      'fr': '',
    },
    'bafr2i8r': {
      'en': '',
      'fr': '',
    },
    '9rz1e3gb': {
      'en': '',
      'fr': '',
    },
    '7r7mp41d': {
      'en': '',
      'fr': '',
    },
    'y68yuamc': {
      'en': '',
      'fr': '',
    },
    '33dxn7ie': {
      'en': '',
      'fr': '',
    },
    'jkz8rbnp': {
      'en': '',
      'fr': '',
    },
    'hrti26jl': {
      'en': '',
      'fr': '',
    },
    'w5fqhvk1': {
      'en': '',
      'fr': '',
    },
    '04oyndp4': {
      'en': '',
      'fr': '',
    },
    '9nw1dn7d': {
      'en': '',
      'fr': '',
    },
    'hnam59m4': {
      'en': '',
      'fr': '',
    },
    'xn0qsha8': {
      'en': '',
      'fr': '',
    },
    '9uy317op': {
      'en': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
