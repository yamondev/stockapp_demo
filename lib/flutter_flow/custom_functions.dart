import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double negative(double number) {
  // Add your function code here!
  return 0.0 - number;
}

double multiply(
  double number1,
  double number2,
  double number3,
) {
  // Add your function code here!
  return number1 + (number2 * number3);
}

String listDesX(List<DateEnvoyeRecord> tableau) {
  // Add your function code here!
  // loop for and table
  String element1;
  if (tableau.length > 0) {
    element1 = tableau[0].date + '"';

    for (int i = 1; i < tableau.length - 1; i++) {
      element1 += ', "' + tableau[i].date + '"';
    }

    element1 += ', "' + tableau[tableau.length - 1].date;
  }
  return element1;
}

String listDesX3(List<DateEnvoyeClotureurRecord> tableau) {
  // Add your function code here!
  // loop for and table
  String element1;
  if (tableau.length > 0) {
    element1 = tableau[0].date + '"';

    for (int i = 1; i < tableau.length - 1; i++) {
      element1 += ', "' + tableau[i].date + '"';
    }

    element1 += ', "' + tableau[tableau.length - 1].date;
  }
  return element1;
}

String listDesX33(List<DateEnvoyeAppRecord> tableau) {
  // Add your function code here!
  // loop for and table
  String element1;
  if (tableau.length > 0) {
    element1 = tableau[0].date + '"';

    for (int i = 1; i < tableau.length - 1; i++) {
      element1 += ', "' + tableau[i].date + '"';
    }

    element1 += ', "' + tableau[tableau.length - 1].date;
  }
  return element1;
}

String listDesX22(List<DateEnvoyeClotureurRecord> tableau) {
  // Add your function code here!
  // loop for and table
  String element1;
  if (tableau.length > 0) {
    element1 = tableau[0].date + '"';

    for (int i = 1; i < tableau.length - 1; i++) {
      element1 += ', "' + tableau[i].date + '"';
    }

    element1 += ', "' + tableau[tableau.length - 1].date;
  }
  return element1;
}

String listDesX2(List<DateCroisementRecord> tableau) {
  // Add your function code here!
  // loop for and table
  String element1;
  if (tableau.length > 0) {
    element1 = tableau[0].date + '"';

    for (int i = 1; i < tableau.length - 1; i++) {
      element1 += ', "' + tableau[i].date + '"';
    }

    element1 += ', "' + tableau[tableau.length - 1].date;
  }
  return element1;
}

String listDesY(List<DateEnvoyeRecord> tableau) {
  // Add your function code here!
  // loop for and table
  String element2;
  if (tableau.length > 0) {
    element2 = tableau[0].coutCree.toStringAsFixed(2) + '"';

    for (int i = 1; i < tableau.length - 1; i++) {
      element2 += ', "' + tableau[i].coutCree.toStringAsFixed(2) + '"';
    }

    element2 += ', "' + tableau[tableau.length - 1].coutCree.toStringAsFixed(2);
  }
  return element2;
}

String listDesY3(List<DateEnvoyeClotureurRecord> tableau) {
  // Add your function code here!
  // loop for and table
  String element2;
  if (tableau.length > 0) {
    element2 = tableau[0].coutCloture.toStringAsFixed(2) + '"';

    for (int i = 1; i < tableau.length - 1; i++) {
      element2 += ', "' + tableau[i].coutCloture.toStringAsFixed(2) + '"';
    }

    element2 +=
        ', "' + tableau[tableau.length - 1].coutCloture.toStringAsFixed(2);
  }
  return element2;
}

String listDesY33(List<DateEnvoyeAppRecord> tableau) {
  // Add your function code here!
  // loop for and table
  String element2;
  if (tableau.length > 0) {
    element2 = tableau[0].coutCree.toStringAsFixed(2) + '"';

    for (int i = 1; i < tableau.length - 1; i++) {
      element2 += ', "' + tableau[i].coutCree.toStringAsFixed(2) + '"';
    }

    element2 += ', "' + tableau[tableau.length - 1].coutCree.toStringAsFixed(2);
  }
  return element2;
}

String listDesY22(List<DateEnvoyeClotureurRecord> tableau) {
  // Add your function code here!
  // loop for and table
  String element2;
  if (tableau.length > 0) {
    element2 = tableau[0].coutCloture.toStringAsFixed(2) + '"';

    for (int i = 1; i < tableau.length - 1; i++) {
      element2 += ', "' + tableau[i].coutCloture.toStringAsFixed(2) + '"';
    }

    element2 +=
        ', "' + tableau[tableau.length - 1].coutCloture.toStringAsFixed(2);
  }
  return element2;
}

String listDesY2(List<DateCroisementRecord> tableau) {
  // Add your function code here!
  // loop for and table
  String element2;
  if (tableau.length > 0) {
    element2 = tableau[0].coutCommande.toStringAsFixed(2) + '"';

    for (int i = 1; i < tableau.length - 1; i++) {
      element2 += ', "' + tableau[i].coutCommande.toStringAsFixed(2) + '"';
    }

    element2 +=
        ', "' + tableau[tableau.length - 1].coutCommande.toStringAsFixed(2);
  }
  return element2;
}

String listDesY2prime(List<DateCroisementRecord> tableau) {
  // Add your function code here!
  // loop for and table
  String element2;
  if (tableau.length > 0) {
    element2 = tableau[0].coutApprovisio.toStringAsFixed(2) + '"';

    for (int i = 1; i < tableau.length - 1; i++) {
      element2 += ', "' + tableau[i].coutApprovisio.toStringAsFixed(2) + '"';
    }

    element2 +=
        ', "' + tableau[tableau.length - 1].coutApprovisio.toStringAsFixed(2);
  }
  return element2;
}

double sommeliste(List<BonEnvoyeRecord> numbers) {
  // Add your function code here!
  double somme = 0.0;
  if (numbers.length > 0) {
    for (int i = 0; i < numbers.length; i++) {
      somme += numbers[i].cout;
    }
  }
  return somme;
}

double sommeQuantite(List<ArticleSelectonneRecord> tableau) {
  // Add your function code here!
  double somme = 0;
  if (tableau.length > 0) {
    for (int i = 0; i < tableau.length; i++) {
      somme += tableau[i].quantiteArticle;
    }
  }
  return somme;
}

List<String> listeDesNoms(List<ArticleSelectonneRecord> tableau) {
  // Add your function code here!
  List<String> element = [];
  if (tableau.length > 0) {
    for (int i = 0; i < tableau.length; i++) {
      element.add(tableau[i].nomArticle);
    }
  }
  return element;
}

int addition(int number) {
  // Add your function code here!
  int element;
  element = number + 1;
  return element;
}

String listDesArticlesPDF(
  List<ArticleSelectonneRecord> tableau1,
  List<ArticlesRecord> tableau2,
) {
  // Add your function code here!
  String element1;
  if (tableau1.length > 0) {
    for (int i = 0; i < tableau2.length; i++) {
      if (tableau2[i].nom == tableau1[0].nomArticle) {
        element1 = '{\\"ref\\": \\"' +
            tableau2[i].code +
            '\\", \\"des\\": \\"' +
            tableau1[0].nomArticle +
            '\\", \\"qte\\": \\"' +
            tableau1[0].quantiteArticle.toStringAsFixed(2) +
            '\\", \\"pu\\": \\"' +
            tableau2[i].prixUnitaire.toStringAsFixed(2) +
            '\\", \\"pt\\": \\"' +
            (tableau1[0].quantiteArticle * tableau2[i].prixUnitaire)
                .toStringAsFixed(2) +
            '\\"}';
      }
    }

    for (int i = 1; i < tableau1.length; i++) {
      for (int j = 0; j < tableau2.length; j++) {
        if (tableau2[j].nom == tableau1[i].nomArticle) {
          element1 += ', {\\"ref\\": \\"' +
              tableau2[j].code +
              '\\", \\"des\\": \\"' +
              tableau1[i].nomArticle +
              '\\", \\"qte\\": \\"' +
              tableau1[i].quantiteArticle.toStringAsFixed(2) +
              '\\", \\"pu\\": \\"' +
              tableau2[j].prixUnitaire.toStringAsFixed(2) +
              '\\", \\"pt\\": \\"' +
              (tableau1[i].quantiteArticle * tableau2[j].prixUnitaire)
                  .toStringAsFixed(2) +
              '\\"}';
        }
      }
    }
  }
  return element1;
}

String retrievurl(dynamic url) {
  // Add your function code here!
  String element;
  String element1 = '';
  element = url.toString();
  for (int i = 10; i < element.length; i++) {
    if (element[i] == ',') {
      break;
    } else {
      element1 += element[i];
    }
  }
  return element1;
}

String timestampTOstring(DateTime time) {
  // Add your function code here!
  return DateFormat('yMMMd').format(time).toString();
}

String timestampTOstringmoins(DateTime time) {
  // Add your function code here!
  return DateFormat('yMMMd')
      .format(time.subtract(Duration(days: 1)))
      .toString();
}

String timestampTOstringplus(DateTime time) {
  // Add your function code here!
  return DateFormat('yMMMd').format(time.add(Duration(days: 1))).toString();
}

List<String> timestampTOstring2(
  DateTime time1,
  DateTime time2,
) {
  // Add your function code here!
  List<String> element1 = [];
  for (int i = 0; i <= time2.difference(time1).inDays; i++) {
    element1.add(
        DateFormat('yMMMd').format(time1.add(Duration(days: i))).toString());
  }
  element1.add(DateFormat('yMMMd').format(time2).toString());
  return element1;
}

String mailRapport(
  String mailfrom,
  String mailobject,
  BonEnvoyeRecord mailbon,
) {
  // Add your function code here!
  String element;

  element = 'Titre : ' +
      mailbon.nom +
      '%0AStatut: ' +
      mailbon.statut +
      '(' +
      mailbon.intituleStatut +
      ')';

  return 'mailto:' +
      mailfrom +
      '?subject=' +
      mailobject +
      mailbon.code +
      '&body=' +
      element;
}

String articleScan(
  String element,
  List<ArticlesRecord> tableau,
) {
  // Add your function code here!
  String element1 = '0';
  for (int i = 0; i < tableau.length; i++) {
    if (element == tableau[i].code) {
      element1 = tableau[i].nom;
    }
  }
  return element1;
}

bool articleScan2(
  String element,
  List<ArticleSelectonneRecord> tableau,
) {
  // Add your function code here!
  bool element1 = false;
  for (int i = 0; i < tableau.length; i++) {
    if (element == tableau[i].nomArticle) {
      element1 = true;
    }
  }
  return element1;
}

double articleScan1(
  String element,
  List<ArticlesRecord> tableau,
) {
  // Add your function code here!
  double element1;
  for (int i = 0; i < tableau.length; i++) {
    if (element == tableau[i].code) {
      element1 = tableau[i].prixUnitaire;
    }
  }
  return element1;
}
