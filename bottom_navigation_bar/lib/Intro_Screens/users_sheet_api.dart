import 'package:bottom_navigation_bar/Intro_Screens/user.dart';
import 'package:gsheets/gsheets.dart';

class UserSheetApi {
  static const _credentials = r'''
{
  "type": "service_account",
  "project_id": "blithapp-1bab7",
  "private_key_id": "2d9073681c58318a0102958c47f3c0c032b0456a",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCtfdJavlxq9b1l\nc5ETk1NhErGrvXRVXidrvtoyg2gqe63gbgaC4vgYLj4xeRgArmt+rImrTWugLr+/\n2TIn2QAhNXzdgP+HAjl62R05RE/sjxODSmyZHE726/xUmDOOFAZw5z5xQtNYmCQH\nIPlF9jKzB7JytI8if4GZiYECU2p6AL9NiHGxbDFGW82Ufk1RPWvMoYMGz+9ugSZc\nyUsyoFjft2HkCmmnHfAUS37+/tqjt++azC3HhOBcnoCtmLL2zldlr+G3A67roNYj\nQ8cDZlaUU7r6Mqxad60vm4WU6AhrmnDU9Xxnzq7Is4K/OLegjY/g5hQwxm44Zaaq\nUc3nIFdnAgMBAAECggEAFAOuZ0KLtdkootIMvAXkeg/miEoAaDLG+HKZiHdJZpFD\nE1+OB754YY3AJgPyxW1ZwFDWRvlU/7M08sRzOU6a6bnacFFH6ULT77ypVuhvEfrF\nhQFqetVdtLWvs/ClDfB4d8DtnrJXYGKY0Wu35h7LZYTvTLVQx+mOwXAv/l0yLOXF\nH5sp/J/mBpC35GZbGEtDzotv8yh4JVelH/9oEe38VuMptykb81vGvMrBkcLJAsWm\ni9sk6fv4nkYHnyhESjFyOWyPnH0VM+V4eGPQW8R62F8L+PrXA27rOO+1Dtf5++FW\n9oNZ0njFYJZ/CyyTVGGvsJPFzAgCkhvatHJ0jDettQKBgQDwdI/6Tf7l6aaIEe02\noPzxWp1JK3sE5Zcevyc2IlE4IVC3GDr5mVZUNJua9SCwaDMDv06grtMMCi5hXhzg\nC3Kg3CokmtVGSdCe/vL7pBELac1eaj12ZFrqCrfouHed7CWATAex0CV/1L84di7Q\n4ChZNkB4b2cu52DIDVeSfYFYhQKBgQC4tQkBAN0hKBkXwsqIWiIaL/JuwpUn1AGY\n+QVOqlqqRW93o6zLguT6tsAUpO9+ACx8EVav/CvbqVF3J4hNnPbC/DbTinDAVKgy\neU/fLYfCJ+eDAnq4xV92Kvgqg3QP0zuenXisrtXD9aJ2apK69HAdNjP1/9nEWWKR\nKitHXABp+wKBgGIr5OCX2Xr64w/o6cWFAuBzU4YdJ3O/XOyjtJmodyqIh5DJZsKj\nNRjaBbHFZNxBHproD20RE3915KvCJd3fLqS4XshlIrA40OEpTAErYf4b60oh7Agb\nPvcQ+zcboVKrqD/ySq3xQm4naQ7fSYvkCPUrbjT9ns4Kj3v93oQjk5yVAoGAbUd+\nej9+lP1aSzqOBTn+byvq7SjmglfmUhES2MXlOlQ2bLxDoWxh+QtifVRP9WY463Z+\nqUQy1pVIg4y6EeFKBXafIW0I5GGx2Zr4bHxNk8t0J4ix/tuXbRxjExQO+MXqwh88\npD4UbwnHAvRut3mjU0UcXPDwcEDKFkSysld2Tz0CgYBMSZpl1ob3kGnhHhjWLIOT\nZydInn/7W6Rsf7HU0u9txZZb7CA3ImsAfHaeVu+PrbY3q6pFG3ZU3b0UEivZe2AV\nlq6a+jiDhDu8ZkF6ZSlViXb44+mXwGLMesulDIwq3ODtZh9cOG/DLszgO8j2TFR/\nn9NtcTQdat5D75TjHTsrCA==\n-----END PRIVATE KEY-----\n",
  "client_email": "blithapp@blithapp-1bab7.iam.gserviceaccount.com",
  "client_id": "100262023177749253123",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/blithapp%40blithapp-1bab7.iam.gserviceaccount.com"
}

  ''';
  static final _spreadsheetId = '12UHYudlE1hldjIXn-zTfloVl5j7MGJE6qMn8LU8VTOA';

  static final _gsheets = GSheets(_credentials);
  static Worksheet? _userSheet;
  static Worksheet? _userSheet2;
  // static Worksheet? _userSheet3;

  static Future init() async {
    try {
      final spreadsheet = await _gsheets.spreadsheet(_spreadsheetId);
      _userSheet = await _getWorkSheet(spreadsheet, title: 'Users');
      _userSheet2 = await _getWorkSheet(spreadsheet, title: 'WaitingLobby');
      // _userSheet3 = await _getWorkSheet(spreadsheet, title: 'Polling');

      final firstRow = UserFields.getFields();
      _userSheet!.values.insertRow(1, firstRow);

      final firstRow2 = wlobbyfields.getFields();
      _userSheet2!.values.insertRow(1, firstRow2);

      // final firstRow3 = pollfields.getFields();
      // _userSheet3!.values.insertRow(1, firstRow3);
    } catch (e) {
      print('Init Error: $e');
    }
  }

  static Future<Worksheet> _getWorkSheet(
    Spreadsheet spreadsheet, {
    required String title,
  }) async {
    try {
      return await spreadsheet.addWorksheet(title);
    } catch (e) {
      return spreadsheet.worksheetByTitle(title)!;
    }
  }

  static Future<User2?> getById(int id) async {
    if (_userSheet == null) return null;
    final json = await _userSheet!.values.map.rowByKey(id, fromColumn: 1);
    return json == null ? null : User2.fromJSON(json);
  }

  static Future<wlobby?> getById2(int id) async {
    if (_userSheet2 == null) return null;
    final json = await _userSheet2!.values.map.rowByKey(id, fromColumn: 1);
    return json == null ? null : wlobby.fromJSON(json);
  }

  // static Future<poll?> getById3(int id) async {
  //   if (_userSheet3 == null) return null;
  //   final json = await _userSheet3!.values.map.rowByKey(id, fromColumn: 1);
  //   return json == null ? null : poll.fromJSON(json);
  // }

  // static Future<User2?> getById4(String id) async {
  //   if (_userSheet == null) return null;
  //   final json = await _userSheet!.values.map.rowByKey(id, fromColumn: 5);
  //   return json == null ? null : User2.fromJSON(json);
  // }

  static Future<User2?> getById4(String id) async {
    if (_userSheet == null) return null;
    final json = await _userSheet!.values.map.rowByKey(id, fromColumn: 1);
    return json == null ? null : User2.fromJSON(json);
  }

  static Future insert(List<Map<String, dynamic>> rowList) async {
    if (_userSheet == null) return;
    _userSheet!.values.map.appendRows(rowList);
  }

  static Future insert2(List<Map<String, dynamic>> rowList) async {
    if (_userSheet2 == null) return;
    _userSheet2!.values.map.appendRows(rowList);
  }

  // static Future insert3(List<Map<String, dynamic>> rowList) async {
  //   if (_userSheet3 == null) return;
  //   _userSheet3!.values.map.appendRows(rowList);
  // }

  static Future<int> getRowCount() async {
    if (_userSheet == null) return 0;
    final lastRow = await _userSheet!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.skip(1).first) ?? 0;
  }

  static Future<int> getRowCountxx() async {
    if (_userSheet == null) return 0;
    final lastRow = await _userSheet!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }

  static Future<int> getRowCount2() async {
    if (_userSheet2 == null) return 0;
    final lastRow = await _userSheet2!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }

  // static Future<int> getRowCount3() async {
  //   if (_userSheet3 == null) return 0;
  //   final lastRow = await _userSheet3!.values.lastRow();
  //   return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  // }

  // static Future<User2?> getById(int id) async {
  //   if (_userSheet==null) return null;
  //   final json = await _userSheet!.values.map.rowByKey(id, fromColumn: 1);
  //   return json==null ? null: User2.fromJSON(json);
  // }
}
