import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GraphStatCall {
  static Future<ApiCallResponse> call({
    String abscisse = '',
    String ordonnee1 = '',
    String ordonnee2 = '',
  }) {
    final body = '''
{
  "width": 300,
  "height": 300,
  "format": "png",
  "chart": {
    "type": "line",
    "data": {
      "labels": [
        "${abscisse}"
      ],
      "datasets": [
        {
          "labels": "encaissements",
          "backgroundColor": "green",
          "borderColor": "green",
          "data": [
            "${ordonnee1}"
          ],
          "fill": "false",
          "pointRadius": 0
        },
        {
          "labels": "dépenses",
          "backgroundColor": "red",
          "borderColor": "red",
          "data": [
            "${ordonnee2}"
          ],
          "fill": "false",
          "pointRadius": 0
        }
      ]
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GraphStat',
      apiUrl: 'https://quickchart.io/chart/create',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'abscisse': abscisse,
        'ordonnee1': ordonnee1,
        'ordonnee2': ordonnee2,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class GraphCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'graph',
      apiUrl:
          'https://image-charts.com/chart?chco=0077CC&chd=t%3A27%2C25%2C60%2C31%2C25%2C39%2C25%2C31%2C26%2C28%2C80%2C28%2C27%2C31%2C27%2C29%2C26%2C35%2C70%2C25&chs=300x125&cht=ls',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
    );
  }
}

class MakeTEMPLATECall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'MakeTEMPLATE',
      apiUrl: 'https://us1.pdfgeneratorapi.com/api/v3/templates/453568',
      callType: ApiCallType.GET,
      headers: {
        'authorization':
            'Bearer 663358ce78a6991d2687e0026516cd103c117674e600a6d2c52c4f3e87ecc2a6',
      },
      params: {},
      returnBody: true,
    );
  }
}

class MakePDFCall {
  static Future<ApiCallResponse> call({
    String leNom = '',
    String leCode = '',
    String leStatut = '',
    String laDate1 = '',
    String lHeure1 = '',
    String leValideur = '',
    String laDate2 = '',
    String lHeure2 = '',
    String leClotureur = '',
    String laDate3 = '',
    String lHeure3 = '',
    String leDemandeur = '',
    double leCout,
    String leLogo = '',
    String lesArticles = '',
  }) {
    final body = '''
{
  "data": "{\"titre\": \"\", \"cout\": \"\", \"logo\": \"\", \"code\": \"\", \"statut\": \"\", \"demandeur\": \"\", \"date1\": \"\", \"time1\": \"\", \"valideur\": \"\", \"date2\": \"\", \"time2\": \"\", \"clotureur\": \"\", \"date3\": \"\", \"time3\": \"\"}",
  "template_id": "b8177b2b1d955f2a",
  "export_type": "json",
  "expiration": 60,
  "output_file": "Bon_de_commande.pdf",
  "is_cmyk": false,
  "image_resample_res": 600
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'MakePDF',
      apiUrl: 'https://api.craftmypdf.com/v1/create',
      callType: ApiCallType.POST,
      headers: {
        'X-API-KEY': '7c78MTM2NToxMzYyOmI2NEVmdVNlUE5wM3RXRVQ',
      },
      params: {
        'leNom': leNom,
        'leCode': leCode,
        'leStatut': leStatut,
        'laDate1': laDate1,
        'lHeure1': lHeure1,
        'leValideur': leValideur,
        'laDate2': laDate2,
        'lHeure2': lHeure2,
        'leClotureur': leClotureur,
        'laDate3': laDate3,
        'lHeure3': lHeure3,
        'leDemandeur': leDemandeur,
        'leCout': leCout,
        'leLogo': leLogo,
        'lesArticles': lesArticles,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic fichier(dynamic response) => getJsonField(
        response,
        r'''$.file''',
      );
}

class MakePDFFCall {
  static Future<ApiCallResponse> call({
    String leNom = '',
  }) {
    final body = '''
{
  "name": "${leNom}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'MakePDFF',
      apiUrl:
          'https://us1.pdfgeneratorapi.com/api/v3/templates/453568/output?name=Mon%20bon&format=pdf&output=url',
      callType: ApiCallType.POST,
      headers: {
        'authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiI2NjMzNThjZTc4YTY5OTFkMjY4N2UwMDI2NTE2Y2QxMDNjMTE3Njc0ZTYwMGE2ZDJjNTJjNGYzZTg3ZWNjMmE2Iiwic3ViIjoieW1vdXNzOThAZ21haWwuY29tIiwiZXhwIjoxNjU4MTM3NjQwfQ.G7IQArbMSPQ42GLLBwBelN0AtbBpPfRLKb8UApz3aUw',
      },
      params: {
        'leNom': leNom,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class MakePDFCopyCall {
  static Future<ApiCallResponse> call() {
    final body = '''
{
  "data": "{\"titre\": \"hdrsh\"}",
  "template_id": "b8177b2b1d955f2a",
  "export_type": "json",
  "expiration": 60,
  "output_file": "Bon_de_commande.pdf",
  "is_cmyk": false,
  "image_resample_res": 600
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'MakePDF Copy',
      apiUrl: 'https://api-au.craftmypdf.com/v1/create',
      callType: ApiCallType.POST,
      headers: {
        'X-API-KEY': '7c78MTM2NToxMzYyOmI2NEVmdVNlUE5wM3RXRVQ',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic fichier(dynamic response) => getJsonField(
        response,
        r'''$.file''',
      );
}
